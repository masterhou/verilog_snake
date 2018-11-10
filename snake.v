module snake_ram(
	input wire clk, rst,
	
	// gamepad 
	input wire[3:0] row,
	output wire[3:0] col,
	// switch: speed
	input wire[5:0] Speed, // sw1-6
	
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
				Apple_Color ={4'd15, 4'd00, 4'd00},		
				Score_Color ={4'd08, 4'd08, 4'h15}, 
				HiSco_Color ={4'd15, 4'd08, 4'h00};
			
localparam Row = 5'd25, Col=5'd19;
localparam Key_Left=4'h2, Key_Right=4'h4, Key_Down=4'h3, Key_Up=4'h7;
//localparam N=4; // latency

reg[11:0] score, hi_score;

// data and video buffer
reg[8:0] raddr, waddr;
reg[3:0] vdata;
wire[3:0] vout;
vram u_vram(
	.address_a	(waddr),
	.address_b	(raddr),
	.clock_a		(clk),
	.clock_b		(clk),
	.data_a		(vdata),
//	.data_b		(),
	.wren_a		(1'b1),
	.wren_b		(1'b0),
//	.q_a			(),
	.q_b			(vout)
);
	
reg[1:0] head_dir;
reg[4:0] head_pos_x, head_pos_y;
reg[4:0] tail_pos_x, tail_pos_y;
reg[4:0] appl_pos_x, appl_pos_y;

wire[3:0] code;
wire keydown, scan_clk;
keypad4x4 key(v_cnt, rst, row, col, code, keydown, scan_clk);

wire[3:0] LED[7:0];
led8 led(scan_clk, rst, LED[0], LED[1], LED[2], LED[3], LED[4], LED[5], LED[6], LED[7], LEDOut, DigitSelect);

reg[4:0] speed_cnt;

// debug info led /////////////////
//assign Light[0] = ~keydown;
//assign Light[1] = keydown;

assign LED[0] = score[11:8];
assign LED[1] = score[ 7:4];
assign LED[2] = score[ 3:0];

///////////////////////////////////

wire[7:0] randq;
LFSR8_11D LFSR8_11D(clk, rst, randq);
wire[4:0] rand_x = randq[3:0]+randq[6:4]; // 16+8=24
wire[4:0] rand_y = randq[7:4]+randq[1:0]; // 16+3=19

wire[1:0] frame_sync;
assign frame_sync[0] = v_cnt==1 && h_cnt==0;
assign frame_sync[1] = v_cnt==1 && h_cnt==2;

reg[3:0] 	ram_state;
localparam	ram_clr=0, ram_gen_apple=1, ram_set_apple=2, ram_set_head=3,
			ram_logic=4, ram_check=5, ram_clr_tail=6, ram_start=7,
			ram_gen_apple_d=8, ram_check_d=9, ram_clr_tail_d=10;

always @(posedge clk or negedge rst)
	if(!rst) begin
		hi_score <= 1'b0;
		{appl_pos_x, appl_pos_y} <= {5'd10, 5'd2};
		{tail_pos_x, tail_pos_y} <= {5'd1, 5'd2};
		ram_state <= ram_start;
	end
	else if(ram_state==ram_start) begin	// reset screen
		speed_cnt <= 1'b0;
		score <= 1'b0;
		vdata <= {Right, None};
		waddr <= 8'd0;
		raddr <= 8'd0;
		ram_state <= ram_clr;
	end
	else if(ram_state==ram_clr) begin	// reset screen
		if(waddr < Row*Col )
			waddr <= waddr + 1'b1; // clear video ram
		else ram_state <= ram_set_apple;
	end
	else if(ram_state==ram_gen_apple_d)		// vram read latecy 2 clk
		ram_state <= ram_gen_apple;
	else if(ram_state==ram_gen_apple) begin	// generate apple position, random
		if(vout[1:0] != Body && vout[1:0] != Apple)
			ram_state<=ram_set_apple; // apple postion is ok, goto next state
		else begin
			ram_state <= ram_gen_apple_d;
			raddr <= Row*rand_y + rand_x;
			{appl_pos_x, appl_pos_y} <= {rand_x, rand_y}; // gen apple again 
		end
	end
	else if(ram_state==ram_set_apple) begin	// cell <= apple 
		vdata[1:0] <= Apple;
		waddr <= Row*appl_pos_y + appl_pos_x;
		ram_state<=ram_set_head;
	end
	else if(ram_state==ram_set_head) begin	// cell <= head
		vdata <= {head_dir, Body};
		waddr <= Row*head_pos_y + head_pos_x;
		ram_state<=ram_logic;
	end
	else if(ram_state==ram_logic) begin
		if(speed_cnt==Speed) begin	// snake move a grid, need check collision
			speed_cnt<=1'b0;
			ram_state <= ram_check_d;
			raddr <= Row*head_pos_y + head_pos_x;
		end
		else if(frame_sync[0])		// new frame start
			ram_state <= ram_set_head;	// save head turn direct
		else if(frame_sync[1])		// new frame begin, start snake speed count
			speed_cnt <= speed_cnt+1'b1;
		if(x[9:5]<Row)
			raddr <= Row*y[9:5] + x[9:5];	// read cell(32*32 pixel) for graphic render
	end
	else if(ram_state==ram_check_d)			// vram read latecy 2 clk
		ram_state <= ram_check;
	else if(ram_state==ram_check) begin 	// head check
		if(vout[1:0] == Apple) begin // if head type is apple, than generate new apple
			score <= score + 1'b1;
			hi_score = (score >= hi_score) ? score+1'b1 : hi_score;
			ram_state <= ram_gen_apple_d;
			raddr <= Row*rand_y + rand_x;
			{appl_pos_x, appl_pos_y} <= {rand_x, rand_y};
		end
		else if(vout[1:0] == None) begin// head type none, clean tail
			ram_state <= ram_clr_tail_d;
			raddr <= Row*tail_pos_y + tail_pos_x;
		end
		else if(vout[1:0] == Body) begin// game over, restart
			{tail_pos_x, tail_pos_y} <= {head_pos_x, head_pos_y};
			ram_state <= ram_start;
		end
	end
	else if(ram_state==ram_clr_tail_d)		// vram read latecy 2 clk
		ram_state <= ram_clr_tail;
	else if(ram_state==ram_clr_tail) begin	// clear tail
		vdata <= {Right, None}; // clean
		waddr <= Row*tail_pos_y + tail_pos_x;
		move(vout[3:2], tail_pos_x, tail_pos_y);
		ram_state <= ram_set_apple;
	end

wire clk_move= speed_cnt==Speed;
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

// score text
// bmp from rom
wire[9:0]	rom_adr;
wire[31:0] rom_q;
chrom chrom(
  .clock(clk), // input clk
  .address(rom_adr), // input [9:0] address from 0-703
  .q(rom_q) // output [31:0] dout
  );
wire text_q;
wire[9:0] posx = x<660 ? 500 : 660;
wire[9:0] posy = 0;
wire[11:0] num = x<660 ? hi_score : score;
block text_score(clk, rst, rom_adr, rom_q, posx, posy, x, y, num, text_q);

// vga video
wire valid;
wire[9:0] _x, y; 
wire[9:0] x=_x+2; // add 2: ram read latency 2 clk
wire[10:0] h_cnt;
wire[9:0] v_cnt;
vga_800_600 video(clk, rst, hsync, vsync, h_cnt, v_cnt, _x, y, valid);

// every tile size is 32 pixel 
always @(posedge clk)
	if(valid) begin
		case(vout[1:0]) // type
			None:	{vga_r[3:0],vga_g[3:0],vga_b[3:0]} <= None_Color ;
			Body:	{vga_r[3:0],vga_g[3:0],vga_b[3:0]} <= Body_Color ;
			Brick:{vga_r[3:0],vga_g[3:0],vga_b[3:0]} <= Brick_Color;
			Apple:{vga_r[3:0],vga_g[3:0],vga_b[3:0]} <= Apple_Color;
		endcase		
		if(text_q>0)  {vga_r[3:0],vga_g[3:0],vga_b[3:0]} <= x<660 ? HiSco_Color : Score_Color;
	end 
	else {vga_r[3:0],vga_g[3:0],vga_b[3:0]} <= 12'b0;

endmodule
