module vedio(
	input clk, rst,
	output reg[3:0] vga_r, vga_g, vga_b, 
	output reg hsync, vsync
);

wire valid;

wire[9:0] x, y;

vga_800_600 video(clk, rst, hsync, vsync, x, y, valid);

// rasterize, read from vram(video memory)

// wire[]

// vga_r = vram

endmodule
