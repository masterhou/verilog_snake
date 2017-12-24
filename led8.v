module led8 (
	input clk, rst,
	
	input[3:0]
			LED1, 
			LED2, 
			LED3, 
			LED4, 
			LED5, 
			LED6, 
			LED7, 
			LED8,
			 
	output reg[7:0] LEDOut,
	output wire[2:0] DigitSelect);

reg [2:0]Refresh;
wire[3:0]LED;

//-------------------------------------------------
//-- Encoder 
//-------------------------------------------------
//-- HEX-to-seven-segment decoder 
//-- segment encoding 
//--      0 
//--     ---  
//--  5 |   | 1
//--     ---   <- 6
//--  4 |   | 2
//--     ---  
//--      3
always@(LED)
	begin
		case(LED)
			4'b0000: LEDOut[7:0]<= 8'b00111111;    //'0'
			4'b0001: LEDOut[7:0]<= 8'b00000110;    //'1'
			4'b0010: LEDOut[7:0]<= 8'b01011011;    //'2'
			4'b0011: LEDOut[7:0]<= 8'b01001111;    //'3'
			4'b0100: LEDOut[7:0]<= 8'b01100110;    //'4'
			4'b0101: LEDOut[7:0]<= 8'b01101101;    //'5'
			4'b0110: LEDOut[7:0]<= 8'b01111101;    //'6'
			4'b0111: LEDOut[7:0]<= 8'b00000111;    //'7'
			4'b1000: LEDOut[7:0]<= 8'b01111111;    //'8'
			4'b1001: LEDOut[7:0]<= 8'b01101111;    //'9'
			4'b1010: LEDOut[7:0]<= 8'b01110111;    //'A'
			4'b1011: LEDOut[7:0]<= 8'b01111100;    //'B'
			4'b1100: LEDOut[7:0]<= 8'b00111001;    //'C'
			4'b1101: LEDOut[7:0]<= 8'b01011110;    //'D'
			4'b1110: LEDOut[7:0]<= 8'b01111001;    //'E'
			4'b1111: LEDOut[7:0]<= 8'b01110001;    //'F'
			default: LEDOut[7:0]<= 8'bzzzzzzzz;    //' '
		endcase
	end
	
//-- clock 
always@(posedge clk)
	begin
		Refresh <= Refresh + 1'b1; 
	end

//--  LED Digit Select 
assign DigitSelect = Refresh; 

//-- MUX 
assign LED = (Refresh == 3'b000)?  LED1:
			 (Refresh == 3'b001)?  LED2:
			 (Refresh == 3'b010)?  LED3:
			 (Refresh == 3'b011)?  LED4:
			 (Refresh == 3'b100)?  LED5:
			 (Refresh == 3'b101)?  LED6:
			 (Refresh == 3'b110)?  LED7: LED8;	

endmodule 