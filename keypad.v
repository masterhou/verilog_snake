module keypad4x4(
	input clk, rst,
	input wire[3:0] row,
	output reg[3:0] col,
	output reg[3:0] code,
	output keydown,
	output scan_clk
);

reg[18:0] cnt;
reg[3:0] rowdown;

always @(posedge clk or negedge rst)
	if(!rst) cnt<=1'b0;
	else cnt <= cnt + 1'b1;

wire[1:0] index = cnt[18:17];
always @(posedge clk or negedge rst) begin
	if(!rst) col = 4'b0000;
	else 
		case(index)
			2'b00: col <= 4'b1110;
			2'b01: col <= 4'b1101;
			2'b10: col <= 4'b1011;
			2'b11: col <= 4'b0111;
		endcase
end

assign keydown = ~(rowdown==2'b00);
assign scan_clk = cnt[14];

always @(posedge scan_clk or negedge rst)
	if(!rst) code<=4'h0;
	else if(row == 4'b1111) rowdown[index] <=1'b0;
	else begin 
		rowdown[index] <=1'b1;
		case({col, row})
			8'b1110_1110: code<=4'h1;
			8'b1110_1101: code<=4'h2;
			8'b1110_1011: code<=4'h3;
			8'b1110_0111: code<=4'h4;
	
			8'b1101_1110: code<=4'h5;
			8'b1101_1101: code<=4'h6;
			8'b1101_1011: code<=4'h7;
			8'b1101_0111: code<=4'h8;
			
			8'b1011_1110: code<=4'h9;
			8'b1011_1101: code<=4'ha;
			8'b1011_1011: code<=4'hb;
			8'b1011_0111: code<=4'hc;
			
			8'b0111_1110: code<=4'hd;
			8'b0111_1101: code<=4'he;
			8'b0111_1011: code<=4'hf;
			8'b0111_0111: code<=4'h0;
		endcase	
	end
	
endmodule