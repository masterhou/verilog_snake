module vga_800_600(
	input clk, rst,
	output reg hsync, vsync,
	output reg[10:0] h_cnt,
	output reg[9:0]  v_cnt,
	output wire[9:0] pixel_x, pixel_y,
	output wire valid
);
// 800*600@72Hz, Pixel freq = 50.0MHz
localparam
	h_a = 8'd56,
	h_b = 8'd120,
	h_c = 800,
	h_d = 64,
	hhh = 1040, //h_a+h_b+h_c+h_d,
	//--------------
	v_a = 8'd37,
	v_b = 8'd6,
	v_c = 600,
	v_d = 23,
	vvv = 666; //v_a+v_b+v_c+v_d;

always @(posedge clk or negedge rst)
	if(!rst) h_cnt <= 11'd0;
	else if(h_cnt == hhh) h_cnt <= 11'd0;
	else h_cnt <= h_cnt + 1'b1;

always @(posedge clk or negedge rst)
	if(!rst) v_cnt <= 10'd0;
	else if(v_cnt == vvv) v_cnt <= 10'd0;
	else if(h_cnt == hhh) v_cnt <= v_cnt + 1'b1;
	
always @(posedge clk or negedge rst)
	if(!rst) hsync <= 1'b1;
	else if(h_cnt <= h_b) hsync <= 1'b0;
	else hsync <= 1'b1;

always @(posedge clk or negedge rst)
	if(!rst) vsync <= 1'b1;
	else if(v_cnt <= v_b) vsync <= 1'b0;
	else vsync <= 1'b1;

//----------------------------------
assign valid = h_cnt>=h_a+h_b && h_cnt<=h_a+h_b+h_c && v_cnt>=v_a+v_b && v_cnt<=v_a+v_b+v_c;

assign pixel_x = h_cnt-h_a-h_b+2'd2; // vram read latecy 2 clk
assign pixel_y = v_cnt-v_a-v_b;

endmodule
