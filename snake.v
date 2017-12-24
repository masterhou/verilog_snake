module snake_ram(
	input wire clk, rst,
	
	// gamepad 
	input wire[3:0] row,
	output wire[3:0] col,
	// switch: has brick
	input wire sw_brick,
	
	// vga display
	output reg[3:0] vga_r, vga_g, vga_b,
	output wire hsync, vsync,
	
	// led score display
	output wire[7:0] LEDOut,
	output wire[2:0] DigitSelect,
	output wire[7:0] Light
);

localparam Right = 2'd0, Left = 2'd1, Up = 2'd2, Down = 2'd3;
localparam None = 2'd0, Body=2'd1, Brick=2'd2, Apple=2'd3;

localparam 	None_Color = {4'd15, 4'd15, 4'd15}, 
				Body_Color = {4'd09, 4'd15, 4'd00}, 
				Brick_Color ={4'd05, 4'd05, 4'd07},  
				Apple_Color ={4'd15, 4'd00, 4'd00};			
			
localparam Row = 5'd25, Col=5'd19, Speed=5'd15;
localparam Key_Left=4'h2, Key_Right=4'h4, Key_Down=4'h3, Key_Up=4'h7;

reg[15:0] score;

reg[8:0] vaddr_read, vaddr_write;
reg[3:0] vdata;
reg vwren;
wire[3:0] vout;
vram vram(clk, vdata, vaddr_read, vaddr_write, vwren, vout);

reg[1:0] head_dir;
reg[4:0] head_pos_x, head_pos_y;
reg[4:0] tail_pos_x, tail_pos_y;
reg[4:0] appl_pos_x, appl_pos_y;

wire[3:0] code;
wire keydown, scan_clk;
keypad4x4 key(clk, rst, row, col, code, keydown, scan_clk);

wire[3:0] LED[7:0];
led8 led(scan_clk, rst, LED[0], LED[1], LED[2], LED[3], LED[4], LED[5], LED[6], LED[7], LEDOut, DigitSelect);

reg[4:0] cnt;

// debug info led /////////////////
//assign Light[0] = ~keydown;
//assign Light[1] = keydown;

assign LED[0] = score[11:8];
assign LED[1] = score[ 7:4];
assign LED[2] = score[ 3:0];

///////////////////////////////////

wire[7:0] randq;
LFSR8_11D LFSR8_11D(clk, rst, randq);
wire[4:0] rand_x = randq[3:0];
wire[4:0] rand_y = randq[7:4];

reg[2:0] gen_cnt;
reg[3:0] ram_state;
localparam ram_clr=0, ram_gen_apple=1, ram_set_apple=2, ram_set_head=3, ram_render=4, ram_check=5, ram_clr_tail=6;

always @(posedge clk or negedge rst)
	if(!rst) begin
		cnt <= 1'b0;
		gen_cnt <= 1'b0;
		score <= 1'b0;
		ram_state <= ram_clr;
		vdata <= {Right, None};
		vaddr_write <= 8'd0;
		vaddr_read  <= 8'd0;
		vwren <=1'b1;
		{tail_pos_x, tail_pos_y} <= {5'd0, 5'd2};
		{appl_pos_x, appl_pos_y} <= {5'd15, 5'd2};
	end
	else if(ram_state==ram_clr) begin	// reset screen
		if(vaddr_write < Row*Col )
			vaddr_write <= vaddr_write + 1'b1;
		else ram_state <= ram_set_apple;
	end
	else if(ram_state==ram_gen_apple) begin	// generate apple position, random
		vaddr_read <= Row*appl_pos_y + appl_pos_x;
		if(gen_cnt==4) begin
			gen_cnt <= 1'b0;
			if(vout[1:0] != Body && vout[1:0] != Apple)
				ram_state<=ram_set_apple;
			else {appl_pos_x, appl_pos_y} <= {rand_x, rand_y};
		end
		else gen_cnt <= gen_cnt + 1'b1;
	end
	else if(ram_state==ram_set_apple) begin	// cell <= apple 
		vdata[1:0] <= Apple;
		vaddr_write <= Row*appl_pos_y + appl_pos_x;
		vwren <=1'b1;
		ram_state<=ram_set_head;
	end
	else if(ram_state==ram_set_head) begin	// cell <= head
		vdata <= {head_dir, Body};
		vaddr_write <= Row*head_pos_y + head_pos_x;
		vwren <=1'b1;
		ram_state<=ram_render;
	end
	else if(ram_state==ram_render) begin  // render to screen
		vwren <= 1'b0;
		vaddr_read <= Row*y[9:5] + x[9:5]; // read cell for vga
			
		if(cnt==Speed) begin 
			cnt<=1'b0;
			ram_state <= ram_check;
		end
		else if(v_cnt==650) begin
			if(h_cnt==4)
				cnt <= cnt+1;
			if(h_cnt==1) ram_state<=ram_set_head; // save head turn direct
		end
	end
	else if(ram_state==ram_check) begin	// head check // vram read latecy 5 clk
		vaddr_read <= Row*head_pos_y + head_pos_x;
		if(h_cnt==10) begin
			if(vout[1:0] == Apple) begin // head type apple 
				score <= score + 1'b1;
				ram_state <= ram_gen_apple;
				{appl_pos_x, appl_pos_y} <= {rand_x, rand_y};
			end
			else if(vout[1:0] == None) begin// head type none
				ram_state <= ram_clr_tail;
			end
		end
	end
	else if(ram_state==ram_clr_tail) begin	// clear tail // vram read latecy 5 clk
		vaddr_read <= Row*tail_pos_y + tail_pos_x;
		if(h_cnt==15) begin
			vwren <= 1'b1; // write
			vdata <= 4'b0; // clean 
			vaddr_write <= Row*tail_pos_y + tail_pos_x;
			move(vout[3:2], tail_pos_x, tail_pos_y);
			ram_state <= ram_set_apple;
		end
	end

wire clk_move= cnt==Speed;
// go ahead, move head position, before check collision one clock
always @(posedge clk_move or negedge rst)
	if(!rst)
		{head_pos_x, head_pos_y} <= {5'd1, 5'd2};
	else
		move(head_dir, head_pos_x, head_pos_y);

// keyboard
always @(posedge keydown or negedge rst)
	if(!rst)
		head_dir <= Right;
	else
	if(keydown) 
		case(code)
			Key_Right:	head_dir<= head_dir!=Left ? Right: head_dir;
			Key_Left: 	head_dir<= head_dir!=Right? Left : head_dir;
			Key_Up:		head_dir<= head_dir!=Down ? Up   : head_dir;
			Key_Down:	head_dir<= head_dir!=Up	  ? Down : head_dir;
		endcase
		
task move;
	input wire[1:0] dir;
	inout reg[4:0] px, py;
	case(dir) // dir
		Right: px <= px<5'd24 ? px + 1'b1 : 5'd00;
		Left:  px <= px>5'd00 ? px - 1'b1 : 5'd24;
		Up:	 py <= py>5'd00 ? py - 1'b1 : 5'd18;
		Down:  py <= py<5'd18 ? py + 1'b1 : 5'd00;
	endcase
endtask

// video
wire valid;
wire[9:0] x, y;
wire[10:0] h_cnt;
wire[9:0] v_cnt;
vga_800_600 video(clk, rst, hsync, vsync, h_cnt, v_cnt, x, y, valid);
reg[11:0] Pixel_Color;
// every tile size is 32 pixel 
always @(posedge clk)
	if(valid) begin
		case(vout[1:0]) // type
			None:	Pixel_Color <= None_Color ;
			Body:	Pixel_Color <= Body_Color ;
			Brick:Pixel_Color <= Brick_Color;
			Apple:Pixel_Color <= Apple_Color;
		endcase
		{vga_r[3:0],vga_g[3:0],vga_b[3:0]} <= Pixel_Color;
	end 
	else {vga_r[3:0],vga_g[3:0],vga_b[3:0]} <= 12'b0;

endmodule
