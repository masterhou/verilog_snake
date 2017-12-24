-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "12/24/2017 22:21:07"

-- 
-- Device: Altera EP3C25Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	snake_ram IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	row : IN std_logic_vector(3 DOWNTO 0);
	col : BUFFER std_logic_vector(3 DOWNTO 0);
	sw_brick : IN std_logic;
	vga_r : BUFFER std_logic_vector(3 DOWNTO 0);
	vga_g : BUFFER std_logic_vector(3 DOWNTO 0);
	vga_b : BUFFER std_logic_vector(3 DOWNTO 0);
	hsync : BUFFER std_logic;
	vsync : BUFFER std_logic;
	LEDOut : BUFFER std_logic_vector(7 DOWNTO 0);
	DigitSelect : BUFFER std_logic_vector(2 DOWNTO 0);
	Light : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END snake_ram;

-- Design Ports Information
-- col[0]	=>  Location: PIN_148,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- col[1]	=>  Location: PIN_159,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- col[2]	=>  Location: PIN_160,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- col[3]	=>  Location: PIN_161,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sw_brick	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vga_r[0]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[1]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[2]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[3]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[0]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[1]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[2]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[3]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[0]	=>  Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[1]	=>  Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[2]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[3]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hsync	=>  Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vsync	=>  Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDOut[0]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDOut[1]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDOut[2]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDOut[3]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDOut[4]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDOut[5]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDOut[6]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDOut[7]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DigitSelect[0]	=>  Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DigitSelect[1]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DigitSelect[2]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Light[0]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Light[1]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Light[2]	=>  Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Light[3]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Light[4]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Light[5]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Light[6]	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Light[7]	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_151,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_145,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[3]	=>  Location: PIN_162,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[0]	=>  Location: PIN_167,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[2]	=>  Location: PIN_164,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[1]	=>  Location: PIN_166,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF snake_ram IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_row : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_col : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw_brick : std_logic;
SIGNAL ww_vga_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hsync : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_LEDOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DigitSelect : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Light : std_logic_vector(7 DOWNTO 0);
SIGNAL \vram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \vram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \vram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \vram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \key|cnt[14]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw_brick~input_o\ : std_logic;
SIGNAL \col[0]~output_o\ : std_logic;
SIGNAL \col[1]~output_o\ : std_logic;
SIGNAL \col[2]~output_o\ : std_logic;
SIGNAL \col[3]~output_o\ : std_logic;
SIGNAL \vga_r[0]~output_o\ : std_logic;
SIGNAL \vga_r[1]~output_o\ : std_logic;
SIGNAL \vga_r[2]~output_o\ : std_logic;
SIGNAL \vga_r[3]~output_o\ : std_logic;
SIGNAL \vga_g[0]~output_o\ : std_logic;
SIGNAL \vga_g[1]~output_o\ : std_logic;
SIGNAL \vga_g[2]~output_o\ : std_logic;
SIGNAL \vga_g[3]~output_o\ : std_logic;
SIGNAL \vga_b[0]~output_o\ : std_logic;
SIGNAL \vga_b[1]~output_o\ : std_logic;
SIGNAL \vga_b[2]~output_o\ : std_logic;
SIGNAL \vga_b[3]~output_o\ : std_logic;
SIGNAL \hsync~output_o\ : std_logic;
SIGNAL \vsync~output_o\ : std_logic;
SIGNAL \LEDOut[0]~output_o\ : std_logic;
SIGNAL \LEDOut[1]~output_o\ : std_logic;
SIGNAL \LEDOut[2]~output_o\ : std_logic;
SIGNAL \LEDOut[3]~output_o\ : std_logic;
SIGNAL \LEDOut[4]~output_o\ : std_logic;
SIGNAL \LEDOut[5]~output_o\ : std_logic;
SIGNAL \LEDOut[6]~output_o\ : std_logic;
SIGNAL \LEDOut[7]~output_o\ : std_logic;
SIGNAL \DigitSelect[0]~output_o\ : std_logic;
SIGNAL \DigitSelect[1]~output_o\ : std_logic;
SIGNAL \DigitSelect[2]~output_o\ : std_logic;
SIGNAL \Light[0]~output_o\ : std_logic;
SIGNAL \Light[1]~output_o\ : std_logic;
SIGNAL \Light[2]~output_o\ : std_logic;
SIGNAL \Light[3]~output_o\ : std_logic;
SIGNAL \Light[4]~output_o\ : std_logic;
SIGNAL \Light[5]~output_o\ : std_logic;
SIGNAL \Light[6]~output_o\ : std_logic;
SIGNAL \Light[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \key|cnt[0]~54_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \key|cnt[1]~18_combout\ : std_logic;
SIGNAL \key|cnt[1]~19\ : std_logic;
SIGNAL \key|cnt[2]~20_combout\ : std_logic;
SIGNAL \key|cnt[2]~21\ : std_logic;
SIGNAL \key|cnt[3]~22_combout\ : std_logic;
SIGNAL \key|cnt[3]~23\ : std_logic;
SIGNAL \key|cnt[4]~24_combout\ : std_logic;
SIGNAL \key|cnt[4]~25\ : std_logic;
SIGNAL \key|cnt[5]~26_combout\ : std_logic;
SIGNAL \key|cnt[5]~27\ : std_logic;
SIGNAL \key|cnt[6]~28_combout\ : std_logic;
SIGNAL \key|cnt[6]~29\ : std_logic;
SIGNAL \key|cnt[7]~30_combout\ : std_logic;
SIGNAL \key|cnt[7]~31\ : std_logic;
SIGNAL \key|cnt[8]~32_combout\ : std_logic;
SIGNAL \key|cnt[8]~33\ : std_logic;
SIGNAL \key|cnt[9]~34_combout\ : std_logic;
SIGNAL \key|cnt[9]~35\ : std_logic;
SIGNAL \key|cnt[10]~36_combout\ : std_logic;
SIGNAL \key|cnt[10]~37\ : std_logic;
SIGNAL \key|cnt[11]~38_combout\ : std_logic;
SIGNAL \key|cnt[11]~39\ : std_logic;
SIGNAL \key|cnt[12]~40_combout\ : std_logic;
SIGNAL \key|cnt[12]~41\ : std_logic;
SIGNAL \key|cnt[13]~42_combout\ : std_logic;
SIGNAL \key|cnt[13]~43\ : std_logic;
SIGNAL \key|cnt[14]~44_combout\ : std_logic;
SIGNAL \key|cnt[14]~45\ : std_logic;
SIGNAL \key|cnt[15]~46_combout\ : std_logic;
SIGNAL \key|cnt[15]~47\ : std_logic;
SIGNAL \key|cnt[16]~48_combout\ : std_logic;
SIGNAL \key|cnt[16]~49\ : std_logic;
SIGNAL \key|cnt[17]~50_combout\ : std_logic;
SIGNAL \key|cnt[17]~51\ : std_logic;
SIGNAL \key|cnt[18]~52_combout\ : std_logic;
SIGNAL \key|Decoder0~0_combout\ : std_logic;
SIGNAL \key|Decoder0~1_combout\ : std_logic;
SIGNAL \key|Decoder0~2_combout\ : std_logic;
SIGNAL \key|Decoder0~3_combout\ : std_logic;
SIGNAL \video|Add0~0_combout\ : std_logic;
SIGNAL \video|h_cnt~2_combout\ : std_logic;
SIGNAL \video|Add0~1\ : std_logic;
SIGNAL \video|Add0~2_combout\ : std_logic;
SIGNAL \video|Add0~3\ : std_logic;
SIGNAL \video|Add0~4_combout\ : std_logic;
SIGNAL \video|Add0~5\ : std_logic;
SIGNAL \video|Add0~6_combout\ : std_logic;
SIGNAL \video|Add0~7\ : std_logic;
SIGNAL \video|Add0~8_combout\ : std_logic;
SIGNAL \video|h_cnt~0_combout\ : std_logic;
SIGNAL \video|Add0~9\ : std_logic;
SIGNAL \video|Add0~10_combout\ : std_logic;
SIGNAL \video|Add0~11\ : std_logic;
SIGNAL \video|Add0~12_combout\ : std_logic;
SIGNAL \video|Add0~13\ : std_logic;
SIGNAL \video|Add0~14_combout\ : std_logic;
SIGNAL \video|Add0~15\ : std_logic;
SIGNAL \video|Add0~16_combout\ : std_logic;
SIGNAL \video|Add0~17\ : std_logic;
SIGNAL \video|Add0~18_combout\ : std_logic;
SIGNAL \video|Add0~19\ : std_logic;
SIGNAL \video|Add0~20_combout\ : std_logic;
SIGNAL \video|h_cnt~1_combout\ : std_logic;
SIGNAL \video|Equal0~1_combout\ : std_logic;
SIGNAL \video|Equal0~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \video|Equal0~2_combout\ : std_logic;
SIGNAL \video|Add1~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \video|Add1~9\ : std_logic;
SIGNAL \video|Add1~10_combout\ : std_logic;
SIGNAL \video|v_cnt[5]~2_combout\ : std_logic;
SIGNAL \video|Add1~17\ : std_logic;
SIGNAL \video|Add1~18_combout\ : std_logic;
SIGNAL \video|v_cnt[9]~4_combout\ : std_logic;
SIGNAL \video|LessThan5~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \video|v_cnt[8]~0_combout\ : std_logic;
SIGNAL \video|v_cnt[0]~11_combout\ : std_logic;
SIGNAL \video|Add1~1\ : std_logic;
SIGNAL \video|Add1~2_combout\ : std_logic;
SIGNAL \video|v_cnt[1]~10_combout\ : std_logic;
SIGNAL \video|Add1~3\ : std_logic;
SIGNAL \video|Add1~4_combout\ : std_logic;
SIGNAL \video|v_cnt[2]~7_combout\ : std_logic;
SIGNAL \video|Add1~5\ : std_logic;
SIGNAL \video|Add1~6_combout\ : std_logic;
SIGNAL \video|v_cnt[3]~9_combout\ : std_logic;
SIGNAL \video|Add1~7\ : std_logic;
SIGNAL \video|Add1~8_combout\ : std_logic;
SIGNAL \video|v_cnt[4]~6_combout\ : std_logic;
SIGNAL \video|v_cnt[9]~1_combout\ : std_logic;
SIGNAL \video|Add1~11\ : std_logic;
SIGNAL \video|Add1~12_combout\ : std_logic;
SIGNAL \video|v_cnt[6]~3_combout\ : std_logic;
SIGNAL \video|Add1~13\ : std_logic;
SIGNAL \video|Add1~14_combout\ : std_logic;
SIGNAL \video|v_cnt[7]~5_combout\ : std_logic;
SIGNAL \video|Add1~15\ : std_logic;
SIGNAL \video|Add1~16_combout\ : std_logic;
SIGNAL \video|v_cnt[8]~8_combout\ : std_logic;
SIGNAL \video|valid~4_combout\ : std_logic;
SIGNAL \video|valid~5_combout\ : std_logic;
SIGNAL \video|LessThan3~0_combout\ : std_logic;
SIGNAL \video|LessThan3~1_combout\ : std_logic;
SIGNAL \video|LessThan4~0_combout\ : std_logic;
SIGNAL \video|LessThan4~1_combout\ : std_logic;
SIGNAL \video|LessThan4~2_combout\ : std_logic;
SIGNAL \video|valid~2_combout\ : std_logic;
SIGNAL \video|valid~0_combout\ : std_logic;
SIGNAL \video|valid~1_combout\ : std_logic;
SIGNAL \video|valid~3_combout\ : std_logic;
SIGNAL \video|valid~6_combout\ : std_logic;
SIGNAL \vga_r[0]~reg0feeder_combout\ : std_logic;
SIGNAL \vga_r[0]~reg0_q\ : std_logic;
SIGNAL \cnt[0]~7_combout\ : std_logic;
SIGNAL \ram_state~22_combout\ : std_logic;
SIGNAL \ram_state.ram_check~q\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \score[8]~23_combout\ : std_logic;
SIGNAL \ram_state~32_combout\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \ram_state~33_combout\ : std_logic;
SIGNAL \ram_state.ram_clr_tail~q\ : std_logic;
SIGNAL \gen_cnt~0_combout\ : std_logic;
SIGNAL \gen_cnt~2_combout\ : std_logic;
SIGNAL \gen_cnt[1]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ram_state~28_combout\ : std_logic;
SIGNAL \ram_state.ram_gen_apple~1_combout\ : std_logic;
SIGNAL \ram_state.ram_set_apple~q\ : std_logic;
SIGNAL \vaddr_write[6]~2_combout\ : std_logic;
SIGNAL \vaddr_write[6]~3_combout\ : std_logic;
SIGNAL \LFSR8_11D|LFSR~2_combout\ : std_logic;
SIGNAL \LFSR8_11D|LFSR~1_combout\ : std_logic;
SIGNAL \LFSR8_11D|LFSR~0_combout\ : std_logic;
SIGNAL \LFSR8_11D|LFSR[0]~feeder_combout\ : std_logic;
SIGNAL \LFSR8_11D|LFSR[1]~feeder_combout\ : std_logic;
SIGNAL \appl_pos_y[3]~0_combout\ : std_logic;
SIGNAL \appl_pos_y[3]~1_combout\ : std_logic;
SIGNAL \appl_pos_y[0]~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add11~8\ : std_logic;
SIGNAL \Add11~9_combout\ : std_logic;
SIGNAL \Add11~11_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \tail_pos_x[0]~6_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \tail_pos_x[0]~7\ : std_logic;
SIGNAL \tail_pos_x[1]~8_combout\ : std_logic;
SIGNAL \tail_pos_x[1]~9\ : std_logic;
SIGNAL \tail_pos_x[2]~10_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \appl_pos_y[2]~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \row[2]~input_o\ : std_logic;
SIGNAL \row[1]~input_o\ : std_logic;
SIGNAL \row[3]~input_o\ : std_logic;
SIGNAL \row[0]~input_o\ : std_logic;
SIGNAL \key|Equal1~0_combout\ : std_logic;
SIGNAL \key|rowdown[2]~2_combout\ : std_logic;
SIGNAL \key|rowdown[3]~1_combout\ : std_logic;
SIGNAL \key|cnt[14]~clkctrl_outclk\ : std_logic;
SIGNAL \key|rowdown[0]~0_combout\ : std_logic;
SIGNAL \key|rowdown[0]~feeder_combout\ : std_logic;
SIGNAL \key|rowdown[1]~3_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \key|Selector1~0_combout\ : std_logic;
SIGNAL \key|code[2]~0_combout\ : std_logic;
SIGNAL \key|code[2]~1_combout\ : std_logic;
SIGNAL \key|code[2]~2_combout\ : std_logic;
SIGNAL \head_dir[0]~3_combout\ : std_logic;
SIGNAL \key|Selector0~0_combout\ : std_logic;
SIGNAL \key|Selector2~0_combout\ : std_logic;
SIGNAL \key|Selector3~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \head_dir[1]~feeder_combout\ : std_logic;
SIGNAL \head_dir[1]~0_combout\ : std_logic;
SIGNAL \head_dir[1]~1_combout\ : std_logic;
SIGNAL \head_dir[1]~2_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \head_pos_x[4]~1_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \head_pos_x[4]~0_combout\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \Add15~3_combout\ : std_logic;
SIGNAL \Add14~5\ : std_logic;
SIGNAL \Add14~7\ : std_logic;
SIGNAL \Add14~8_combout\ : std_logic;
SIGNAL \Add15~10\ : std_logic;
SIGNAL \Add15~14_combout\ : std_logic;
SIGNAL \Add15~16_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \Add15~2_combout\ : std_logic;
SIGNAL \Add15~4_combout\ : std_logic;
SIGNAL \Add15~1\ : std_logic;
SIGNAL \Add15~6\ : std_logic;
SIGNAL \Add15~8\ : std_logic;
SIGNAL \Add15~9_combout\ : std_logic;
SIGNAL \Add14~6_combout\ : std_logic;
SIGNAL \Add15~11_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \Add15~5_combout\ : std_logic;
SIGNAL \Add14~1\ : std_logic;
SIGNAL \Add14~2_combout\ : std_logic;
SIGNAL \Add15~12_combout\ : std_logic;
SIGNAL \Add14~3\ : std_logic;
SIGNAL \Add14~4_combout\ : std_logic;
SIGNAL \Add15~7_combout\ : std_logic;
SIGNAL \Add15~13_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \vaddr_write~19_combout\ : std_logic;
SIGNAL \vaddr_write~20_combout\ : std_logic;
SIGNAL \tail_pos_x[4]~5_combout\ : std_logic;
SIGNAL \vaddr_write[6]~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \appl_pos_y[3]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][3]~3_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Mult3|mult_core|romout[0][3]~3_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \vaddr_write~13_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][3]~3_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \vaddr_write~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][4]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mult3|mult_core|romout[0][4]~2_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][4]~2_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \vaddr_write~21_combout\ : std_logic;
SIGNAL \vaddr_write~22_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Mult3|mult_core|romout[0][5]~1_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \vaddr_write~11_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][5]~1_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \vaddr_write~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Mult3|mult_core|romout[0][6]~0_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][6]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \vaddr_write~4_combout\ : std_logic;
SIGNAL \vaddr_write~5_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][7]~4_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Mult3|mult_core|romout[0][7]~4_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \vaddr_write~7_combout\ : std_logic;
SIGNAL \vaddr_write~8_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mult3|mult_core|romout[0][8]~5_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][8]~5_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \vaddr_write~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \vaddr_write~10_combout\ : std_logic;
SIGNAL \vaddr_read[8]~0_combout\ : std_logic;
SIGNAL \vaddr_read[8]~1_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \vaddr_read~2_combout\ : std_logic;
SIGNAL \video|Add5~1_cout\ : std_logic;
SIGNAL \video|Add5~3\ : std_logic;
SIGNAL \video|Add5~5\ : std_logic;
SIGNAL \video|Add5~7\ : std_logic;
SIGNAL \video|Add5~9\ : std_logic;
SIGNAL \video|Add5~10_combout\ : std_logic;
SIGNAL \video|Add5~8_combout\ : std_logic;
SIGNAL \video|Add5~6_combout\ : std_logic;
SIGNAL \video|Add5~2_combout\ : std_logic;
SIGNAL \video|Add5~4_combout\ : std_logic;
SIGNAL \video|Add6~1_cout\ : std_logic;
SIGNAL \video|Add6~3_cout\ : std_logic;
SIGNAL \video|Add6~5_cout\ : std_logic;
SIGNAL \video|Add6~6_combout\ : std_logic;
SIGNAL \video|Add2~1\ : std_logic;
SIGNAL \video|Add2~2_combout\ : std_logic;
SIGNAL \video|Add2~0_combout\ : std_logic;
SIGNAL \video|Add4~1_cout\ : std_logic;
SIGNAL \video|Add4~3_cout\ : std_logic;
SIGNAL \video|Add4~5_cout\ : std_logic;
SIGNAL \video|Add4~6_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \vaddr_read~3_combout\ : std_logic;
SIGNAL \vaddr_read[0]~4_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \video|Add2~3\ : std_logic;
SIGNAL \video|Add2~4_combout\ : std_logic;
SIGNAL \video|Add4~7\ : std_logic;
SIGNAL \video|Add4~8_combout\ : std_logic;
SIGNAL \video|Add5~11\ : std_logic;
SIGNAL \video|Add5~12_combout\ : std_logic;
SIGNAL \video|Add6~7\ : std_logic;
SIGNAL \video|Add6~8_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \vaddr_read~5_combout\ : std_logic;
SIGNAL \vaddr_read~6_combout\ : std_logic;
SIGNAL \vaddr_read~7_combout\ : std_logic;
SIGNAL \video|Add2~5\ : std_logic;
SIGNAL \video|Add2~6_combout\ : std_logic;
SIGNAL \video|Add4~9\ : std_logic;
SIGNAL \video|Add4~10_combout\ : std_logic;
SIGNAL \video|Add5~13\ : std_logic;
SIGNAL \video|Add5~14_combout\ : std_logic;
SIGNAL \video|Add6~9\ : std_logic;
SIGNAL \video|Add6~10_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \vaddr_read~8_combout\ : std_logic;
SIGNAL \video|Add2~7\ : std_logic;
SIGNAL \video|Add2~8_combout\ : std_logic;
SIGNAL \video|Add4~11\ : std_logic;
SIGNAL \video|Add4~12_combout\ : std_logic;
SIGNAL \video|Add5~15\ : std_logic;
SIGNAL \video|Add5~16_combout\ : std_logic;
SIGNAL \video|Add6~11\ : std_logic;
SIGNAL \video|Add6~12_combout\ : std_logic;
SIGNAL \Mult2|mult_core|romout[0][3]~0_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \vaddr_read~9_combout\ : std_logic;
SIGNAL \vaddr_read~10_combout\ : std_logic;
SIGNAL \vaddr_read~11_combout\ : std_logic;
SIGNAL \video|Add2~9\ : std_logic;
SIGNAL \video|Add2~10_combout\ : std_logic;
SIGNAL \video|Add4~13\ : std_logic;
SIGNAL \video|Add4~14_combout\ : std_logic;
SIGNAL \Mult2|mult_core|romout[0][4]~1_combout\ : std_logic;
SIGNAL \video|Add5~17\ : std_logic;
SIGNAL \video|Add5~18_combout\ : std_logic;
SIGNAL \video|Add6~13\ : std_logic;
SIGNAL \video|Add6~14_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \vaddr_read~12_combout\ : std_logic;
SIGNAL \Mult2|mult_core|romout[0][5]~2_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \vaddr_read~13_combout\ : std_logic;
SIGNAL \vaddr_read~14_combout\ : std_logic;
SIGNAL \Mult2|mult_core|romout[0][6]~3_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \vaddr_read~15_combout\ : std_logic;
SIGNAL \vaddr_read~16_combout\ : std_logic;
SIGNAL \Mult2|mult_core|romout[0][7]~4_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \vaddr_read~17_combout\ : std_logic;
SIGNAL \vaddr_read~18_combout\ : std_logic;
SIGNAL \vaddr_read~19_combout\ : std_logic;
SIGNAL \Mult2|mult_core|romout[0][8]~5_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \vaddr_read~20_combout\ : std_logic;
SIGNAL \vdata[0]~0_combout\ : std_logic;
SIGNAL \vdata~1_combout\ : std_logic;
SIGNAL \vdata[2]~2_combout\ : std_logic;
SIGNAL \vdata~3_combout\ : std_logic;
SIGNAL \tail_pos_x[4]~16_combout\ : std_logic;
SIGNAL \tail_pos_x[4]~17_combout\ : std_logic;
SIGNAL \tail_pos_x[2]~11\ : std_logic;
SIGNAL \tail_pos_x[3]~12_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \tail_pos_x[3]~13\ : std_logic;
SIGNAL \tail_pos_x[4]~14_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \vaddr_write~15_combout\ : std_logic;
SIGNAL \vaddr_write~16_combout\ : std_logic;
SIGNAL \tail_pos_y[4]~0_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add11~10\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~6\ : std_logic;
SIGNAL \Add11~7_combout\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add11~13_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \Add11~3_combout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add11~5_combout\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \vaddr_write~17_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \vaddr_write~18_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \vaddr_write[6]~0_combout\ : std_logic;
SIGNAL \vaddr_write[6]~1_combout\ : std_logic;
SIGNAL \ram_state.ram_clr~0_combout\ : std_logic;
SIGNAL \ram_state.ram_clr~feeder_combout\ : std_logic;
SIGNAL \ram_state.ram_clr~q\ : std_logic;
SIGNAL \ram_state~23_combout\ : std_logic;
SIGNAL \ram_state~24_combout\ : std_logic;
SIGNAL \ram_state~29_combout\ : std_logic;
SIGNAL \ram_state~25_combout\ : std_logic;
SIGNAL \cnt[4]~5_combout\ : std_logic;
SIGNAL \cnt[4]~6_combout\ : std_logic;
SIGNAL \ram_state~26_combout\ : std_logic;
SIGNAL \ram_state~27_combout\ : std_logic;
SIGNAL \ram_state~30_combout\ : std_logic;
SIGNAL \ram_state.ram_render~q\ : std_logic;
SIGNAL \cnt[4]~17_combout\ : std_logic;
SIGNAL \cnt[4]~18_combout\ : std_logic;
SIGNAL \cnt[0]~8\ : std_logic;
SIGNAL \cnt[1]~9_combout\ : std_logic;
SIGNAL \cnt[1]~10\ : std_logic;
SIGNAL \cnt[2]~11_combout\ : std_logic;
SIGNAL \cnt[2]~12\ : std_logic;
SIGNAL \cnt[3]~13_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \cnt[3]~14\ : std_logic;
SIGNAL \cnt[4]~15_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \ram_state~34_combout\ : std_logic;
SIGNAL \ram_state.ram_set_head~q\ : std_logic;
SIGNAL \ram_state.ram_gen_apple~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \ram_state.ram_gen_apple~2_combout\ : std_logic;
SIGNAL \ram_state~31_combout\ : std_logic;
SIGNAL \ram_state.ram_gen_apple~3_combout\ : std_logic;
SIGNAL \ram_state.ram_gen_apple~q\ : std_logic;
SIGNAL \vwren~0_combout\ : std_logic;
SIGNAL \vwren~1_combout\ : std_logic;
SIGNAL \vwren~2_combout\ : std_logic;
SIGNAL \vwren~q\ : std_logic;
SIGNAL \Pixel_Color~0_combout\ : std_logic;
SIGNAL \Pixel_Color[9]~feeder_combout\ : std_logic;
SIGNAL \vga_r~0_combout\ : std_logic;
SIGNAL \vga_r[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \vga_r~1_combout\ : std_logic;
SIGNAL \vga_r[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \vga_r~2_combout\ : std_logic;
SIGNAL \vga_r[3]~reg0_q\ : std_logic;
SIGNAL \vga_g~0_combout\ : std_logic;
SIGNAL \vga_g[0]~reg0feeder_combout\ : std_logic;
SIGNAL \vga_g[0]~reg0_q\ : std_logic;
SIGNAL \Pixel_Color[7]~4_combout\ : std_logic;
SIGNAL \vga_g~1_combout\ : std_logic;
SIGNAL \vga_g[1]~reg0feeder_combout\ : std_logic;
SIGNAL \vga_g[1]~reg0_q\ : std_logic;
SIGNAL \vga_g[2]~reg0_q\ : std_logic;
SIGNAL \vga_g[3]~reg0_q\ : std_logic;
SIGNAL \Pixel_Color[2]~5_combout\ : std_logic;
SIGNAL \vga_b~0_combout\ : std_logic;
SIGNAL \vga_b[0]~reg0feeder_combout\ : std_logic;
SIGNAL \vga_b[0]~reg0_q\ : std_logic;
SIGNAL \vga_b[1]~reg0feeder_combout\ : std_logic;
SIGNAL \vga_b[1]~reg0_q\ : std_logic;
SIGNAL \vga_b[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \vga_b~1_combout\ : std_logic;
SIGNAL \vga_b[3]~reg0_q\ : std_logic;
SIGNAL \video|LessThan0~1_combout\ : std_logic;
SIGNAL \video|LessThan0~0_combout\ : std_logic;
SIGNAL \video|LessThan2~0_combout\ : std_logic;
SIGNAL \video|LessThan0~2_combout\ : std_logic;
SIGNAL \video|hsync~q\ : std_logic;
SIGNAL \video|LessThan1~0_combout\ : std_logic;
SIGNAL \video|LessThan1~1_combout\ : std_logic;
SIGNAL \video|vsync~q\ : std_logic;
SIGNAL \score[0]~39_combout\ : std_logic;
SIGNAL \score[1]~15_combout\ : std_logic;
SIGNAL \score[8]~38_combout\ : std_logic;
SIGNAL \led|Refresh[0]~2_combout\ : std_logic;
SIGNAL \score[1]~16\ : std_logic;
SIGNAL \score[2]~17_combout\ : std_logic;
SIGNAL \score[2]~18\ : std_logic;
SIGNAL \score[3]~19_combout\ : std_logic;
SIGNAL \score[3]~20\ : std_logic;
SIGNAL \score[4]~21_combout\ : std_logic;
SIGNAL \score[4]~22\ : std_logic;
SIGNAL \score[5]~24_combout\ : std_logic;
SIGNAL \led|Refresh[1]~0_combout\ : std_logic;
SIGNAL \score[5]~25\ : std_logic;
SIGNAL \score[6]~26_combout\ : std_logic;
SIGNAL \score[6]~27\ : std_logic;
SIGNAL \score[7]~28_combout\ : std_logic;
SIGNAL \score[7]~29\ : std_logic;
SIGNAL \score[8]~30_combout\ : std_logic;
SIGNAL \score[8]~31\ : std_logic;
SIGNAL \score[9]~32_combout\ : std_logic;
SIGNAL \led|LED[1]~3_combout\ : std_logic;
SIGNAL \led|Refresh[2]~1_combout\ : std_logic;
SIGNAL \led|LED[0]~1_combout\ : std_logic;
SIGNAL \led|LED[1]~4_combout\ : std_logic;
SIGNAL \score[9]~33\ : std_logic;
SIGNAL \score[10]~34_combout\ : std_logic;
SIGNAL \led|LED[2]~5_combout\ : std_logic;
SIGNAL \led|LED[2]~6_combout\ : std_logic;
SIGNAL \led|LED[0]~0_combout\ : std_logic;
SIGNAL \led|LED[0]~2_combout\ : std_logic;
SIGNAL \score[10]~35\ : std_logic;
SIGNAL \score[11]~36_combout\ : std_logic;
SIGNAL \led|LED[3]~7_combout\ : std_logic;
SIGNAL \led|LED[3]~8_combout\ : std_logic;
SIGNAL \led|WideOr6~0_combout\ : std_logic;
SIGNAL \led|WideOr5~0_combout\ : std_logic;
SIGNAL \led|WideOr4~0_combout\ : std_logic;
SIGNAL \led|WideOr3~0_combout\ : std_logic;
SIGNAL \led|WideOr2~0_combout\ : std_logic;
SIGNAL \led|WideOr1~0_combout\ : std_logic;
SIGNAL \led|WideOr0~0_combout\ : std_logic;
SIGNAL cnt : std_logic_vector(4 DOWNTO 0);
SIGNAL \led|Refresh\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \key|code\ : std_logic_vector(3 DOWNTO 0);
SIGNAL head_pos_x : std_logic_vector(4 DOWNTO 0);
SIGNAL Pixel_Color : std_logic_vector(11 DOWNTO 0);
SIGNAL vdata : std_logic_vector(3 DOWNTO 0);
SIGNAL \key|rowdown\ : std_logic_vector(3 DOWNTO 0);
SIGNAL appl_pos_y : std_logic_vector(4 DOWNTO 0);
SIGNAL gen_cnt : std_logic_vector(2 DOWNTO 0);
SIGNAL tail_pos_x : std_logic_vector(4 DOWNTO 0);
SIGNAL head_dir : std_logic_vector(1 DOWNTO 0);
SIGNAL tail_pos_y : std_logic_vector(4 DOWNTO 0);
SIGNAL appl_pos_x : std_logic_vector(4 DOWNTO 0);
SIGNAL \vram|altsyncram_component|auto_generated|q_b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \video|h_cnt\ : std_logic_vector(10 DOWNTO 0);
SIGNAL vaddr_read : std_logic_vector(8 DOWNTO 0);
SIGNAL \video|v_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL vaddr_write : std_logic_vector(8 DOWNTO 0);
SIGNAL \LFSR8_11D|LFSR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \key|cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL score : std_logic_vector(15 DOWNTO 0);
SIGNAL \key|col\ : std_logic_vector(3 DOWNTO 0);
SIGNAL head_pos_y : std_logic_vector(4 DOWNTO 0);
SIGNAL ALT_INV_head_dir : std_logic_vector(1 DOWNTO 1);
SIGNAL \ALT_INV_vwren~q\ : std_logic;
SIGNAL \led|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \led|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \led|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \led|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \led|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \led|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \video|ALT_INV_vsync~q\ : std_logic;
SIGNAL \video|ALT_INV_hsync~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_row <= row;
col <= ww_col;
ww_sw_brick <= sw_brick;
vga_r <= ww_vga_r;
vga_g <= ww_vga_g;
vga_b <= ww_vga_b;
hsync <= ww_hsync;
vsync <= ww_vsync;
LEDOut <= ww_LEDOut;
DigitSelect <= ww_DigitSelect;
Light <= ww_Light;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\vram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vdata(3) & vdata(2) & vdata(1) & vdata(0));

\vram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (vaddr_write(8) & vaddr_write(7) & vaddr_write(6) & vaddr_write(5) & vaddr_write(4) & vaddr_write(3) & vaddr_write(2) & vaddr_write(1) & vaddr_write(0));

\vram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (vaddr_read(8) & vaddr_read(7) & vaddr_read(6) & vaddr_read(5) & vaddr_read(4) & vaddr_read(3) & vaddr_read(2) & vaddr_read(1) & vaddr_read(0));

\vram|altsyncram_component|auto_generated|q_b\(0) <= \vram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\vram|altsyncram_component|auto_generated|q_b\(1) <= \vram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\vram|altsyncram_component|auto_generated|q_b\(2) <= \vram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\vram|altsyncram_component|auto_generated|q_b\(3) <= \vram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\key|cnt[14]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \key|cnt\(14));

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
ALT_INV_head_dir(1) <= NOT head_dir(1);
\ALT_INV_vwren~q\ <= NOT \vwren~q\;
\led|ALT_INV_WideOr1~0_combout\ <= NOT \led|WideOr1~0_combout\;
\led|ALT_INV_WideOr2~0_combout\ <= NOT \led|WideOr2~0_combout\;
\led|ALT_INV_WideOr3~0_combout\ <= NOT \led|WideOr3~0_combout\;
\led|ALT_INV_WideOr4~0_combout\ <= NOT \led|WideOr4~0_combout\;
\led|ALT_INV_WideOr5~0_combout\ <= NOT \led|WideOr5~0_combout\;
\led|ALT_INV_WideOr6~0_combout\ <= NOT \led|WideOr6~0_combout\;
\video|ALT_INV_vsync~q\ <= NOT \video|vsync~q\;
\video|ALT_INV_hsync~q\ <= NOT \video|hsync~q\;

-- Location: IOOBUF_X53_Y16_N2
\col[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key|col\(0),
	devoe => ww_devoe,
	o => \col[0]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\col[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key|col\(1),
	devoe => ww_devoe,
	o => \col[1]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\col[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key|col\(2),
	devoe => ww_devoe,
	o => \col[2]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\col[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key|col\(3),
	devoe => ww_devoe,
	o => \col[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\vga_r[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_r[0]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_r[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\vga_r[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_r[1]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_r[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\vga_r[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_r[2]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_r[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\vga_r[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_r[3]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_r[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\vga_g[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_g[0]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_g[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\vga_g[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_g[1]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_g[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\vga_g[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_g[2]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_g[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\vga_g[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_g[3]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_g[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\vga_b[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_b[0]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_b[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\vga_b[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_b[1]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_b[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\vga_b[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_b[2]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_b[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\vga_b[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_b[3]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_b[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\hsync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \video|ALT_INV_hsync~q\,
	devoe => ww_devoe,
	o => \hsync~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\vsync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \video|ALT_INV_vsync~q\,
	devoe => ww_devoe,
	o => \vsync~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\LEDOut[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \LEDOut[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\LEDOut[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \LEDOut[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\LEDOut[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led|ALT_INV_WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \LEDOut[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\LEDOut[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \LEDOut[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\LEDOut[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \LEDOut[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\LEDOut[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \LEDOut[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\LEDOut[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \LEDOut[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\LEDOut[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDOut[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\DigitSelect[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led|Refresh\(0),
	devoe => ww_devoe,
	o => \DigitSelect[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\DigitSelect[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led|Refresh\(1),
	devoe => ww_devoe,
	o => \DigitSelect[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\DigitSelect[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led|Refresh\(2),
	devoe => ww_devoe,
	o => \DigitSelect[2]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\Light[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Light[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\Light[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Light[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Light[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Light[2]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\Light[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Light[3]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Light[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Light[4]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\Light[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Light[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\Light[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Light[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\Light[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Light[7]~output_o\);

-- Location: IOIBUF_X53_Y17_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G7
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X36_Y23_N12
\key|cnt[0]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[0]~54_combout\ = !\key|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key|cnt\(0),
	combout => \key|cnt[0]~54_combout\);

-- Location: IOIBUF_X53_Y14_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X36_Y23_N13
\key|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[0]~54_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(0));

-- Location: LCCOMB_X36_Y23_N14
\key|cnt[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[1]~18_combout\ = (\key|cnt\(0) & (\key|cnt\(1) $ (VCC))) # (!\key|cnt\(0) & (\key|cnt\(1) & VCC))
-- \key|cnt[1]~19\ = CARRY((\key|cnt\(0) & \key|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key|cnt\(0),
	datab => \key|cnt\(1),
	datad => VCC,
	combout => \key|cnt[1]~18_combout\,
	cout => \key|cnt[1]~19\);

-- Location: FF_X36_Y23_N15
\key|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[1]~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(1));

-- Location: LCCOMB_X36_Y23_N16
\key|cnt[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[2]~20_combout\ = (\key|cnt\(2) & (!\key|cnt[1]~19\)) # (!\key|cnt\(2) & ((\key|cnt[1]~19\) # (GND)))
-- \key|cnt[2]~21\ = CARRY((!\key|cnt[1]~19\) # (!\key|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key|cnt\(2),
	datad => VCC,
	cin => \key|cnt[1]~19\,
	combout => \key|cnt[2]~20_combout\,
	cout => \key|cnt[2]~21\);

-- Location: FF_X36_Y23_N17
\key|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[2]~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(2));

-- Location: LCCOMB_X36_Y23_N18
\key|cnt[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[3]~22_combout\ = (\key|cnt\(3) & (\key|cnt[2]~21\ $ (GND))) # (!\key|cnt\(3) & (!\key|cnt[2]~21\ & VCC))
-- \key|cnt[3]~23\ = CARRY((\key|cnt\(3) & !\key|cnt[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key|cnt\(3),
	datad => VCC,
	cin => \key|cnt[2]~21\,
	combout => \key|cnt[3]~22_combout\,
	cout => \key|cnt[3]~23\);

-- Location: FF_X36_Y23_N19
\key|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[3]~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(3));

-- Location: LCCOMB_X36_Y23_N20
\key|cnt[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[4]~24_combout\ = (\key|cnt\(4) & (!\key|cnt[3]~23\)) # (!\key|cnt\(4) & ((\key|cnt[3]~23\) # (GND)))
-- \key|cnt[4]~25\ = CARRY((!\key|cnt[3]~23\) # (!\key|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key|cnt\(4),
	datad => VCC,
	cin => \key|cnt[3]~23\,
	combout => \key|cnt[4]~24_combout\,
	cout => \key|cnt[4]~25\);

-- Location: FF_X36_Y23_N21
\key|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[4]~24_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(4));

-- Location: LCCOMB_X36_Y23_N22
\key|cnt[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[5]~26_combout\ = (\key|cnt\(5) & (\key|cnt[4]~25\ $ (GND))) # (!\key|cnt\(5) & (!\key|cnt[4]~25\ & VCC))
-- \key|cnt[5]~27\ = CARRY((\key|cnt\(5) & !\key|cnt[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key|cnt\(5),
	datad => VCC,
	cin => \key|cnt[4]~25\,
	combout => \key|cnt[5]~26_combout\,
	cout => \key|cnt[5]~27\);

-- Location: FF_X36_Y23_N23
\key|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[5]~26_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(5));

-- Location: LCCOMB_X36_Y23_N24
\key|cnt[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[6]~28_combout\ = (\key|cnt\(6) & (!\key|cnt[5]~27\)) # (!\key|cnt\(6) & ((\key|cnt[5]~27\) # (GND)))
-- \key|cnt[6]~29\ = CARRY((!\key|cnt[5]~27\) # (!\key|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key|cnt\(6),
	datad => VCC,
	cin => \key|cnt[5]~27\,
	combout => \key|cnt[6]~28_combout\,
	cout => \key|cnt[6]~29\);

-- Location: FF_X36_Y23_N25
\key|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[6]~28_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(6));

-- Location: LCCOMB_X36_Y23_N26
\key|cnt[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[7]~30_combout\ = (\key|cnt\(7) & (\key|cnt[6]~29\ $ (GND))) # (!\key|cnt\(7) & (!\key|cnt[6]~29\ & VCC))
-- \key|cnt[7]~31\ = CARRY((\key|cnt\(7) & !\key|cnt[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key|cnt\(7),
	datad => VCC,
	cin => \key|cnt[6]~29\,
	combout => \key|cnt[7]~30_combout\,
	cout => \key|cnt[7]~31\);

-- Location: FF_X36_Y23_N27
\key|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[7]~30_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(7));

-- Location: LCCOMB_X36_Y23_N28
\key|cnt[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[8]~32_combout\ = (\key|cnt\(8) & (!\key|cnt[7]~31\)) # (!\key|cnt\(8) & ((\key|cnt[7]~31\) # (GND)))
-- \key|cnt[8]~33\ = CARRY((!\key|cnt[7]~31\) # (!\key|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key|cnt\(8),
	datad => VCC,
	cin => \key|cnt[7]~31\,
	combout => \key|cnt[8]~32_combout\,
	cout => \key|cnt[8]~33\);

-- Location: FF_X36_Y23_N29
\key|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[8]~32_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(8));

-- Location: LCCOMB_X36_Y23_N30
\key|cnt[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[9]~34_combout\ = (\key|cnt\(9) & (\key|cnt[8]~33\ $ (GND))) # (!\key|cnt\(9) & (!\key|cnt[8]~33\ & VCC))
-- \key|cnt[9]~35\ = CARRY((\key|cnt\(9) & !\key|cnt[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key|cnt\(9),
	datad => VCC,
	cin => \key|cnt[8]~33\,
	combout => \key|cnt[9]~34_combout\,
	cout => \key|cnt[9]~35\);

-- Location: FF_X36_Y23_N31
\key|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[9]~34_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(9));

-- Location: LCCOMB_X36_Y22_N0
\key|cnt[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[10]~36_combout\ = (\key|cnt\(10) & (!\key|cnt[9]~35\)) # (!\key|cnt\(10) & ((\key|cnt[9]~35\) # (GND)))
-- \key|cnt[10]~37\ = CARRY((!\key|cnt[9]~35\) # (!\key|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key|cnt\(10),
	datad => VCC,
	cin => \key|cnt[9]~35\,
	combout => \key|cnt[10]~36_combout\,
	cout => \key|cnt[10]~37\);

-- Location: FF_X36_Y22_N1
\key|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[10]~36_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(10));

-- Location: LCCOMB_X36_Y22_N2
\key|cnt[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[11]~38_combout\ = (\key|cnt\(11) & (\key|cnt[10]~37\ $ (GND))) # (!\key|cnt\(11) & (!\key|cnt[10]~37\ & VCC))
-- \key|cnt[11]~39\ = CARRY((\key|cnt\(11) & !\key|cnt[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key|cnt\(11),
	datad => VCC,
	cin => \key|cnt[10]~37\,
	combout => \key|cnt[11]~38_combout\,
	cout => \key|cnt[11]~39\);

-- Location: FF_X36_Y22_N3
\key|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[11]~38_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(11));

-- Location: LCCOMB_X36_Y22_N4
\key|cnt[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[12]~40_combout\ = (\key|cnt\(12) & (!\key|cnt[11]~39\)) # (!\key|cnt\(12) & ((\key|cnt[11]~39\) # (GND)))
-- \key|cnt[12]~41\ = CARRY((!\key|cnt[11]~39\) # (!\key|cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key|cnt\(12),
	datad => VCC,
	cin => \key|cnt[11]~39\,
	combout => \key|cnt[12]~40_combout\,
	cout => \key|cnt[12]~41\);

-- Location: FF_X36_Y22_N5
\key|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[12]~40_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(12));

-- Location: LCCOMB_X36_Y22_N6
\key|cnt[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[13]~42_combout\ = (\key|cnt\(13) & (\key|cnt[12]~41\ $ (GND))) # (!\key|cnt\(13) & (!\key|cnt[12]~41\ & VCC))
-- \key|cnt[13]~43\ = CARRY((\key|cnt\(13) & !\key|cnt[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key|cnt\(13),
	datad => VCC,
	cin => \key|cnt[12]~41\,
	combout => \key|cnt[13]~42_combout\,
	cout => \key|cnt[13]~43\);

-- Location: FF_X36_Y22_N7
\key|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[13]~42_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(13));

-- Location: LCCOMB_X36_Y22_N8
\key|cnt[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[14]~44_combout\ = (\key|cnt\(14) & (!\key|cnt[13]~43\)) # (!\key|cnt\(14) & ((\key|cnt[13]~43\) # (GND)))
-- \key|cnt[14]~45\ = CARRY((!\key|cnt[13]~43\) # (!\key|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key|cnt\(14),
	datad => VCC,
	cin => \key|cnt[13]~43\,
	combout => \key|cnt[14]~44_combout\,
	cout => \key|cnt[14]~45\);

-- Location: FF_X36_Y22_N9
\key|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[14]~44_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(14));

-- Location: LCCOMB_X36_Y22_N10
\key|cnt[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[15]~46_combout\ = (\key|cnt\(15) & (\key|cnt[14]~45\ $ (GND))) # (!\key|cnt\(15) & (!\key|cnt[14]~45\ & VCC))
-- \key|cnt[15]~47\ = CARRY((\key|cnt\(15) & !\key|cnt[14]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key|cnt\(15),
	datad => VCC,
	cin => \key|cnt[14]~45\,
	combout => \key|cnt[15]~46_combout\,
	cout => \key|cnt[15]~47\);

-- Location: FF_X36_Y22_N11
\key|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[15]~46_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(15));

-- Location: LCCOMB_X36_Y22_N12
\key|cnt[16]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[16]~48_combout\ = (\key|cnt\(16) & (!\key|cnt[15]~47\)) # (!\key|cnt\(16) & ((\key|cnt[15]~47\) # (GND)))
-- \key|cnt[16]~49\ = CARRY((!\key|cnt[15]~47\) # (!\key|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key|cnt\(16),
	datad => VCC,
	cin => \key|cnt[15]~47\,
	combout => \key|cnt[16]~48_combout\,
	cout => \key|cnt[16]~49\);

-- Location: FF_X36_Y22_N13
\key|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[16]~48_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(16));

-- Location: LCCOMB_X36_Y22_N14
\key|cnt[17]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[17]~50_combout\ = (\key|cnt\(17) & (\key|cnt[16]~49\ $ (GND))) # (!\key|cnt\(17) & (!\key|cnt[16]~49\ & VCC))
-- \key|cnt[17]~51\ = CARRY((\key|cnt\(17) & !\key|cnt[16]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key|cnt\(17),
	datad => VCC,
	cin => \key|cnt[16]~49\,
	combout => \key|cnt[17]~50_combout\,
	cout => \key|cnt[17]~51\);

-- Location: FF_X36_Y22_N15
\key|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[17]~50_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(17));

-- Location: LCCOMB_X36_Y22_N16
\key|cnt[18]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|cnt[18]~52_combout\ = \key|cnt[17]~51\ $ (\key|cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \key|cnt\(18),
	cin => \key|cnt[17]~51\,
	combout => \key|cnt[18]~52_combout\);

-- Location: FF_X36_Y22_N17
\key|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key|cnt[18]~52_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|cnt\(18));

-- Location: LCCOMB_X36_Y22_N20
\key|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|Decoder0~0_combout\ = (\key|cnt\(18)) # (\key|cnt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key|cnt\(18),
	datad => \key|cnt\(17),
	combout => \key|Decoder0~0_combout\);

-- Location: FF_X36_Y22_N19
\key|col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \key|Decoder0~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|col\(0));

-- Location: LCCOMB_X36_Y22_N28
\key|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|Decoder0~1_combout\ = (\key|cnt\(18)) # (!\key|cnt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key|cnt\(18),
	datad => \key|cnt\(17),
	combout => \key|Decoder0~1_combout\);

-- Location: FF_X36_Y22_N27
\key|col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \key|Decoder0~1_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|col\(1));

-- Location: LCCOMB_X38_Y22_N2
\key|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|Decoder0~2_combout\ = (\key|cnt\(17)) # (!\key|cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key|cnt\(18),
	datad => \key|cnt\(17),
	combout => \key|Decoder0~2_combout\);

-- Location: FF_X36_Y22_N21
\key|col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \key|Decoder0~2_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|col\(2));

-- Location: LCCOMB_X36_Y22_N26
\key|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|Decoder0~3_combout\ = (!\key|cnt\(17)) # (!\key|cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key|cnt\(18),
	datad => \key|cnt\(17),
	combout => \key|Decoder0~3_combout\);

-- Location: FF_X36_Y22_N25
\key|col[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \key|Decoder0~3_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|col\(3));

-- Location: LCCOMB_X29_Y20_N2
\video|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add0~0_combout\ = \video|h_cnt\(0) $ (VCC)
-- \video|Add0~1\ = CARRY(\video|h_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(0),
	datad => VCC,
	combout => \video|Add0~0_combout\,
	cout => \video|Add0~1\);

-- Location: LCCOMB_X30_Y20_N30
\video|h_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|h_cnt~2_combout\ = (\video|Add0~0_combout\ & \video|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \video|Add0~0_combout\,
	datad => \video|Equal0~2_combout\,
	combout => \video|h_cnt~2_combout\);

-- Location: FF_X30_Y20_N31
\video|h_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|h_cnt~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|h_cnt\(0));

-- Location: LCCOMB_X29_Y20_N4
\video|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add0~2_combout\ = (\video|h_cnt\(1) & (!\video|Add0~1\)) # (!\video|h_cnt\(1) & ((\video|Add0~1\) # (GND)))
-- \video|Add0~3\ = CARRY((!\video|Add0~1\) # (!\video|h_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|h_cnt\(1),
	datad => VCC,
	cin => \video|Add0~1\,
	combout => \video|Add0~2_combout\,
	cout => \video|Add0~3\);

-- Location: FF_X29_Y20_N5
\video|h_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|Add0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|h_cnt\(1));

-- Location: LCCOMB_X29_Y20_N6
\video|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add0~4_combout\ = (\video|h_cnt\(2) & (\video|Add0~3\ $ (GND))) # (!\video|h_cnt\(2) & (!\video|Add0~3\ & VCC))
-- \video|Add0~5\ = CARRY((\video|h_cnt\(2) & !\video|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(2),
	datad => VCC,
	cin => \video|Add0~3\,
	combout => \video|Add0~4_combout\,
	cout => \video|Add0~5\);

-- Location: FF_X29_Y20_N7
\video|h_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|Add0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|h_cnt\(2));

-- Location: LCCOMB_X29_Y20_N8
\video|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add0~6_combout\ = (\video|h_cnt\(3) & (!\video|Add0~5\)) # (!\video|h_cnt\(3) & ((\video|Add0~5\) # (GND)))
-- \video|Add0~7\ = CARRY((!\video|Add0~5\) # (!\video|h_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|h_cnt\(3),
	datad => VCC,
	cin => \video|Add0~5\,
	combout => \video|Add0~6_combout\,
	cout => \video|Add0~7\);

-- Location: FF_X29_Y20_N9
\video|h_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|Add0~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|h_cnt\(3));

-- Location: LCCOMB_X29_Y20_N10
\video|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add0~8_combout\ = (\video|h_cnt\(4) & (\video|Add0~7\ $ (GND))) # (!\video|h_cnt\(4) & (!\video|Add0~7\ & VCC))
-- \video|Add0~9\ = CARRY((\video|h_cnt\(4) & !\video|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|h_cnt\(4),
	datad => VCC,
	cin => \video|Add0~7\,
	combout => \video|Add0~8_combout\,
	cout => \video|Add0~9\);

-- Location: LCCOMB_X29_Y20_N0
\video|h_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|h_cnt~0_combout\ = (\video|Add0~8_combout\ & \video|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add0~8_combout\,
	datad => \video|Equal0~2_combout\,
	combout => \video|h_cnt~0_combout\);

-- Location: FF_X28_Y20_N1
\video|h_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \video|h_cnt~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|h_cnt\(4));

-- Location: LCCOMB_X29_Y20_N12
\video|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add0~10_combout\ = (\video|h_cnt\(5) & (!\video|Add0~9\)) # (!\video|h_cnt\(5) & ((\video|Add0~9\) # (GND)))
-- \video|Add0~11\ = CARRY((!\video|Add0~9\) # (!\video|h_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(5),
	datad => VCC,
	cin => \video|Add0~9\,
	combout => \video|Add0~10_combout\,
	cout => \video|Add0~11\);

-- Location: FF_X29_Y20_N13
\video|h_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|Add0~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|h_cnt\(5));

-- Location: LCCOMB_X29_Y20_N14
\video|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add0~12_combout\ = (\video|h_cnt\(6) & (\video|Add0~11\ $ (GND))) # (!\video|h_cnt\(6) & (!\video|Add0~11\ & VCC))
-- \video|Add0~13\ = CARRY((\video|h_cnt\(6) & !\video|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|h_cnt\(6),
	datad => VCC,
	cin => \video|Add0~11\,
	combout => \video|Add0~12_combout\,
	cout => \video|Add0~13\);

-- Location: FF_X29_Y20_N15
\video|h_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|Add0~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|h_cnt\(6));

-- Location: LCCOMB_X29_Y20_N16
\video|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add0~14_combout\ = (\video|h_cnt\(7) & (!\video|Add0~13\)) # (!\video|h_cnt\(7) & ((\video|Add0~13\) # (GND)))
-- \video|Add0~15\ = CARRY((!\video|Add0~13\) # (!\video|h_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|h_cnt\(7),
	datad => VCC,
	cin => \video|Add0~13\,
	combout => \video|Add0~14_combout\,
	cout => \video|Add0~15\);

-- Location: FF_X29_Y20_N17
\video|h_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|Add0~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|h_cnt\(7));

-- Location: LCCOMB_X29_Y20_N18
\video|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add0~16_combout\ = (\video|h_cnt\(8) & (\video|Add0~15\ $ (GND))) # (!\video|h_cnt\(8) & (!\video|Add0~15\ & VCC))
-- \video|Add0~17\ = CARRY((\video|h_cnt\(8) & !\video|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(8),
	datad => VCC,
	cin => \video|Add0~15\,
	combout => \video|Add0~16_combout\,
	cout => \video|Add0~17\);

-- Location: FF_X29_Y20_N19
\video|h_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|Add0~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|h_cnt\(8));

-- Location: LCCOMB_X29_Y20_N20
\video|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add0~18_combout\ = (\video|h_cnt\(9) & (!\video|Add0~17\)) # (!\video|h_cnt\(9) & ((\video|Add0~17\) # (GND)))
-- \video|Add0~19\ = CARRY((!\video|Add0~17\) # (!\video|h_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|h_cnt\(9),
	datad => VCC,
	cin => \video|Add0~17\,
	combout => \video|Add0~18_combout\,
	cout => \video|Add0~19\);

-- Location: FF_X29_Y20_N21
\video|h_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|Add0~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|h_cnt\(9));

-- Location: LCCOMB_X29_Y20_N22
\video|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add0~20_combout\ = \video|Add0~19\ $ (!\video|h_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \video|h_cnt\(10),
	cin => \video|Add0~19\,
	combout => \video|Add0~20_combout\);

-- Location: LCCOMB_X29_Y20_N28
\video|h_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|h_cnt~1_combout\ = (\video|Add0~20_combout\ & \video|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \video|Add0~20_combout\,
	datad => \video|Equal0~2_combout\,
	combout => \video|h_cnt~1_combout\);

-- Location: FF_X29_Y20_N29
\video|h_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|h_cnt~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|h_cnt\(10));

-- Location: LCCOMB_X30_Y19_N30
\video|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Equal0~1_combout\ = (!\video|h_cnt\(4)) # (!\video|h_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \video|h_cnt\(10),
	datad => \video|h_cnt\(4),
	combout => \video|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y19_N18
\video|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Equal0~0_combout\ = (!\video|h_cnt\(2) & (!\video|h_cnt\(1) & (!\video|h_cnt\(0) & !\video|h_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(2),
	datab => \video|h_cnt\(1),
	datac => \video|h_cnt\(0),
	datad => \video|h_cnt\(3),
	combout => \video|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y19_N6
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\video|h_cnt\(6) & (!\video|h_cnt\(9) & (!\video|h_cnt\(8) & !\video|h_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(6),
	datab => \video|h_cnt\(9),
	datac => \video|h_cnt\(8),
	datad => \video|h_cnt\(7),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X30_Y19_N16
\video|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Equal0~2_combout\ = (\video|Equal0~1_combout\) # (((\video|h_cnt\(5)) # (!\Equal6~0_combout\)) # (!\video|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Equal0~1_combout\,
	datab => \video|Equal0~0_combout\,
	datac => \video|h_cnt\(5),
	datad => \Equal6~0_combout\,
	combout => \video|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y23_N6
\video|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add1~0_combout\ = \video|v_cnt\(0) $ (VCC)
-- \video|Add1~1\ = CARRY(\video|v_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(0),
	datad => VCC,
	combout => \video|Add1~0_combout\,
	cout => \video|Add1~1\);

-- Location: LCCOMB_X30_Y23_N0
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\video|v_cnt\(8) & (!\video|v_cnt\(2) & (!\video|v_cnt\(6) & \video|v_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(8),
	datab => \video|v_cnt\(2),
	datac => \video|v_cnt\(6),
	datad => \video|v_cnt\(1),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X31_Y23_N14
\video|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add1~8_combout\ = (\video|v_cnt\(4) & (\video|Add1~7\ $ (GND))) # (!\video|v_cnt\(4) & (!\video|Add1~7\ & VCC))
-- \video|Add1~9\ = CARRY((\video|v_cnt\(4) & !\video|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|v_cnt\(4),
	datad => VCC,
	cin => \video|Add1~7\,
	combout => \video|Add1~8_combout\,
	cout => \video|Add1~9\);

-- Location: LCCOMB_X31_Y23_N16
\video|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add1~10_combout\ = (\video|v_cnt\(5) & (!\video|Add1~9\)) # (!\video|v_cnt\(5) & ((\video|Add1~9\) # (GND)))
-- \video|Add1~11\ = CARRY((!\video|Add1~9\) # (!\video|v_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(5),
	datad => VCC,
	cin => \video|Add1~9\,
	combout => \video|Add1~10_combout\,
	cout => \video|Add1~11\);

-- Location: LCCOMB_X30_Y23_N20
\video|v_cnt[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|v_cnt[5]~2_combout\ = (\video|Add1~10_combout\ & (((\video|v_cnt\(5) & \video|v_cnt[8]~0_combout\)) # (!\video|v_cnt[9]~1_combout\))) # (!\video|Add1~10_combout\ & (\video|v_cnt\(5) & (\video|v_cnt[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add1~10_combout\,
	datab => \video|v_cnt\(5),
	datac => \video|v_cnt[8]~0_combout\,
	datad => \video|v_cnt[9]~1_combout\,
	combout => \video|v_cnt[5]~2_combout\);

-- Location: FF_X29_Y23_N5
\video|v_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \video|v_cnt[5]~2_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|v_cnt\(5));

-- Location: LCCOMB_X31_Y23_N22
\video|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add1~16_combout\ = (\video|v_cnt\(8) & (\video|Add1~15\ $ (GND))) # (!\video|v_cnt\(8) & (!\video|Add1~15\ & VCC))
-- \video|Add1~17\ = CARRY((\video|v_cnt\(8) & !\video|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|v_cnt\(8),
	datad => VCC,
	cin => \video|Add1~15\,
	combout => \video|Add1~16_combout\,
	cout => \video|Add1~17\);

-- Location: LCCOMB_X31_Y23_N24
\video|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add1~18_combout\ = \video|v_cnt\(9) $ (\video|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(9),
	cin => \video|Add1~17\,
	combout => \video|Add1~18_combout\);

-- Location: LCCOMB_X30_Y23_N16
\video|v_cnt[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|v_cnt[9]~4_combout\ = (\video|Add1~18_combout\ & (((\video|v_cnt[8]~0_combout\ & \video|v_cnt\(9))) # (!\video|v_cnt[9]~1_combout\))) # (!\video|Add1~18_combout\ & (\video|v_cnt[8]~0_combout\ & (\video|v_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add1~18_combout\,
	datab => \video|v_cnt[8]~0_combout\,
	datac => \video|v_cnt\(9),
	datad => \video|v_cnt[9]~1_combout\,
	combout => \video|v_cnt[9]~4_combout\);

-- Location: FF_X30_Y23_N17
\video|v_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|v_cnt[9]~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|v_cnt\(9));

-- Location: LCCOMB_X29_Y23_N30
\video|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|LessThan5~0_combout\ = (\video|v_cnt\(3) & (\video|v_cnt\(7) & \video|v_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(3),
	datab => \video|v_cnt\(7),
	datad => \video|v_cnt\(9),
	combout => \video|LessThan5~0_combout\);

-- Location: LCCOMB_X30_Y23_N18
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\video|v_cnt\(0) & (\Equal3~0_combout\ & (!\video|v_cnt\(5) & \video|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(0),
	datab => \Equal3~0_combout\,
	datac => \video|v_cnt\(5),
	datad => \video|LessThan5~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X30_Y23_N4
\video|v_cnt[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|v_cnt[8]~0_combout\ = (\video|Equal0~2_combout\ & ((!\Equal3~1_combout\) # (!\video|v_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \video|Equal0~2_combout\,
	datac => \video|v_cnt\(4),
	datad => \Equal3~1_combout\,
	combout => \video|v_cnt[8]~0_combout\);

-- Location: LCCOMB_X30_Y23_N14
\video|v_cnt[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|v_cnt[0]~11_combout\ = (\video|Add1~0_combout\ & (((\video|v_cnt[8]~0_combout\ & \video|v_cnt\(0))) # (!\video|v_cnt[9]~1_combout\))) # (!\video|Add1~0_combout\ & (\video|v_cnt[8]~0_combout\ & (\video|v_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add1~0_combout\,
	datab => \video|v_cnt[8]~0_combout\,
	datac => \video|v_cnt\(0),
	datad => \video|v_cnt[9]~1_combout\,
	combout => \video|v_cnt[0]~11_combout\);

-- Location: FF_X29_Y23_N31
\video|v_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \video|v_cnt[0]~11_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|v_cnt\(0));

-- Location: LCCOMB_X31_Y23_N8
\video|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add1~2_combout\ = (\video|v_cnt\(1) & (!\video|Add1~1\)) # (!\video|v_cnt\(1) & ((\video|Add1~1\) # (GND)))
-- \video|Add1~3\ = CARRY((!\video|Add1~1\) # (!\video|v_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|v_cnt\(1),
	datad => VCC,
	cin => \video|Add1~1\,
	combout => \video|Add1~2_combout\,
	cout => \video|Add1~3\);

-- Location: LCCOMB_X30_Y23_N8
\video|v_cnt[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|v_cnt[1]~10_combout\ = (\video|Add1~2_combout\ & (((\video|v_cnt\(1) & \video|v_cnt[8]~0_combout\)) # (!\video|v_cnt[9]~1_combout\))) # (!\video|Add1~2_combout\ & (\video|v_cnt\(1) & (\video|v_cnt[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add1~2_combout\,
	datab => \video|v_cnt\(1),
	datac => \video|v_cnt[8]~0_combout\,
	datad => \video|v_cnt[9]~1_combout\,
	combout => \video|v_cnt[1]~10_combout\);

-- Location: FF_X29_Y23_N19
\video|v_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \video|v_cnt[1]~10_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|v_cnt\(1));

-- Location: LCCOMB_X31_Y23_N10
\video|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add1~4_combout\ = (\video|v_cnt\(2) & (\video|Add1~3\ $ (GND))) # (!\video|v_cnt\(2) & (!\video|Add1~3\ & VCC))
-- \video|Add1~5\ = CARRY((\video|v_cnt\(2) & !\video|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(2),
	datad => VCC,
	cin => \video|Add1~3\,
	combout => \video|Add1~4_combout\,
	cout => \video|Add1~5\);

-- Location: LCCOMB_X29_Y23_N6
\video|v_cnt[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|v_cnt[2]~7_combout\ = (\video|v_cnt[9]~1_combout\ & (((\video|v_cnt\(2) & \video|v_cnt[8]~0_combout\)))) # (!\video|v_cnt[9]~1_combout\ & ((\video|Add1~4_combout\) # ((\video|v_cnt\(2) & \video|v_cnt[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt[9]~1_combout\,
	datab => \video|Add1~4_combout\,
	datac => \video|v_cnt\(2),
	datad => \video|v_cnt[8]~0_combout\,
	combout => \video|v_cnt[2]~7_combout\);

-- Location: FF_X29_Y23_N7
\video|v_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|v_cnt[2]~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|v_cnt\(2));

-- Location: LCCOMB_X31_Y23_N12
\video|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add1~6_combout\ = (\video|v_cnt\(3) & (!\video|Add1~5\)) # (!\video|v_cnt\(3) & ((\video|Add1~5\) # (GND)))
-- \video|Add1~7\ = CARRY((!\video|Add1~5\) # (!\video|v_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(3),
	datad => VCC,
	cin => \video|Add1~5\,
	combout => \video|Add1~6_combout\,
	cout => \video|Add1~7\);

-- Location: LCCOMB_X29_Y23_N8
\video|v_cnt[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|v_cnt[3]~9_combout\ = (\video|v_cnt[9]~1_combout\ & (((\video|v_cnt\(3) & \video|v_cnt[8]~0_combout\)))) # (!\video|v_cnt[9]~1_combout\ & ((\video|Add1~6_combout\) # ((\video|v_cnt\(3) & \video|v_cnt[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt[9]~1_combout\,
	datab => \video|Add1~6_combout\,
	datac => \video|v_cnt\(3),
	datad => \video|v_cnt[8]~0_combout\,
	combout => \video|v_cnt[3]~9_combout\);

-- Location: FF_X29_Y23_N9
\video|v_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|v_cnt[3]~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|v_cnt\(3));

-- Location: LCCOMB_X29_Y23_N0
\video|v_cnt[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|v_cnt[4]~6_combout\ = (\video|v_cnt\(4) & (!\Equal3~1_combout\ & ((\video|Add1~8_combout\) # (\video|Equal0~2_combout\)))) # (!\video|v_cnt\(4) & (\video|Add1~8_combout\ & ((!\video|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add1~8_combout\,
	datab => \Equal3~1_combout\,
	datac => \video|v_cnt\(4),
	datad => \video|Equal0~2_combout\,
	combout => \video|v_cnt[4]~6_combout\);

-- Location: FF_X29_Y23_N1
\video|v_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|v_cnt[4]~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|v_cnt\(4));

-- Location: LCCOMB_X30_Y23_N2
\video|v_cnt[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|v_cnt[9]~1_combout\ = (\video|Equal0~2_combout\) # ((\video|v_cnt\(4) & \Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \video|Equal0~2_combout\,
	datac => \video|v_cnt\(4),
	datad => \Equal3~1_combout\,
	combout => \video|v_cnt[9]~1_combout\);

-- Location: LCCOMB_X31_Y23_N18
\video|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add1~12_combout\ = (\video|v_cnt\(6) & (\video|Add1~11\ $ (GND))) # (!\video|v_cnt\(6) & (!\video|Add1~11\ & VCC))
-- \video|Add1~13\ = CARRY((\video|v_cnt\(6) & !\video|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(6),
	datad => VCC,
	cin => \video|Add1~11\,
	combout => \video|Add1~12_combout\,
	cout => \video|Add1~13\);

-- Location: LCCOMB_X29_Y23_N2
\video|v_cnt[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|v_cnt[6]~3_combout\ = (\video|v_cnt[9]~1_combout\ & (((\video|v_cnt\(6) & \video|v_cnt[8]~0_combout\)))) # (!\video|v_cnt[9]~1_combout\ & ((\video|Add1~12_combout\) # ((\video|v_cnt\(6) & \video|v_cnt[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt[9]~1_combout\,
	datab => \video|Add1~12_combout\,
	datac => \video|v_cnt\(6),
	datad => \video|v_cnt[8]~0_combout\,
	combout => \video|v_cnt[6]~3_combout\);

-- Location: FF_X29_Y23_N3
\video|v_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|v_cnt[6]~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|v_cnt\(6));

-- Location: LCCOMB_X31_Y23_N20
\video|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add1~14_combout\ = (\video|v_cnt\(7) & (!\video|Add1~13\)) # (!\video|v_cnt\(7) & ((\video|Add1~13\) # (GND)))
-- \video|Add1~15\ = CARRY((!\video|Add1~13\) # (!\video|v_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|v_cnt\(7),
	datad => VCC,
	cin => \video|Add1~13\,
	combout => \video|Add1~14_combout\,
	cout => \video|Add1~15\);

-- Location: LCCOMB_X30_Y23_N30
\video|v_cnt[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|v_cnt[7]~5_combout\ = (\video|Add1~14_combout\ & (((\video|v_cnt\(7) & \video|v_cnt[8]~0_combout\)) # (!\video|v_cnt[9]~1_combout\))) # (!\video|Add1~14_combout\ & (\video|v_cnt\(7) & (\video|v_cnt[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add1~14_combout\,
	datab => \video|v_cnt\(7),
	datac => \video|v_cnt[8]~0_combout\,
	datad => \video|v_cnt[9]~1_combout\,
	combout => \video|v_cnt[7]~5_combout\);

-- Location: FF_X29_Y23_N29
\video|v_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \video|v_cnt[7]~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|v_cnt\(7));

-- Location: LCCOMB_X30_Y23_N28
\video|v_cnt[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|v_cnt[8]~8_combout\ = (\video|Add1~16_combout\ & (((\video|v_cnt[8]~0_combout\ & \video|v_cnt\(8))) # (!\video|v_cnt[9]~1_combout\))) # (!\video|Add1~16_combout\ & (\video|v_cnt[8]~0_combout\ & (\video|v_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add1~16_combout\,
	datab => \video|v_cnt[8]~0_combout\,
	datac => \video|v_cnt\(8),
	datad => \video|v_cnt[9]~1_combout\,
	combout => \video|v_cnt[8]~8_combout\);

-- Location: FF_X30_Y23_N29
\video|v_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|v_cnt[8]~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|v_cnt\(8));

-- Location: LCCOMB_X30_Y20_N20
\video|valid~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|valid~4_combout\ = (!\video|h_cnt\(10) & ((\video|h_cnt\(8)) # ((\video|h_cnt\(9)) # (\video|h_cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(8),
	datab => \video|h_cnt\(9),
	datac => \video|h_cnt\(7),
	datad => \video|h_cnt\(10),
	combout => \video|valid~4_combout\);

-- Location: LCCOMB_X30_Y23_N26
\video|valid~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|valid~5_combout\ = (!\video|LessThan5~0_combout\ & (\video|valid~4_combout\ & ((!\video|v_cnt\(9)) # (!\video|v_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(8),
	datab => \video|LessThan5~0_combout\,
	datac => \video|valid~4_combout\,
	datad => \video|v_cnt\(9),
	combout => \video|valid~5_combout\);

-- Location: LCCOMB_X30_Y19_N2
\video|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|LessThan3~0_combout\ = (\video|h_cnt\(6) & (\video|h_cnt\(9) & (\video|h_cnt\(8) & \video|h_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(6),
	datab => \video|h_cnt\(9),
	datac => \video|h_cnt\(8),
	datad => \video|h_cnt\(7),
	combout => \video|LessThan3~0_combout\);

-- Location: LCCOMB_X30_Y19_N12
\video|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|LessThan3~1_combout\ = (\video|LessThan3~0_combout\ & ((\video|h_cnt\(5)) # ((!\video|Equal0~0_combout\ & \video|h_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(5),
	datab => \video|Equal0~0_combout\,
	datac => \video|h_cnt\(4),
	datad => \video|LessThan3~0_combout\,
	combout => \video|LessThan3~1_combout\);

-- Location: LCCOMB_X30_Y23_N24
\video|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|LessThan4~0_combout\ = (!\video|v_cnt\(8) & (!\video|v_cnt\(7) & (!\video|v_cnt\(6) & !\video|v_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(8),
	datab => \video|v_cnt\(7),
	datac => \video|v_cnt\(6),
	datad => \video|v_cnt\(9),
	combout => \video|LessThan4~0_combout\);

-- Location: LCCOMB_X30_Y23_N10
\video|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|LessThan4~1_combout\ = ((!\video|v_cnt\(2) & ((!\video|v_cnt\(1)) # (!\video|v_cnt\(0))))) # (!\video|v_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(3),
	datab => \video|v_cnt\(2),
	datac => \video|v_cnt\(0),
	datad => \video|v_cnt\(1),
	combout => \video|LessThan4~1_combout\);

-- Location: LCCOMB_X30_Y23_N12
\video|LessThan4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|LessThan4~2_combout\ = (\video|LessThan4~0_combout\ & (((!\video|v_cnt\(4) & \video|LessThan4~1_combout\)) # (!\video|v_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(4),
	datab => \video|LessThan4~0_combout\,
	datac => \video|v_cnt\(5),
	datad => \video|LessThan4~1_combout\,
	combout => \video|LessThan4~2_combout\);

-- Location: LCCOMB_X30_Y23_N6
\video|valid~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|valid~2_combout\ = (\video|v_cnt\(7) & (\video|v_cnt\(9) & ((\video|v_cnt\(4)) # (\video|v_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(4),
	datab => \video|v_cnt\(7),
	datac => \video|v_cnt\(2),
	datad => \video|v_cnt\(9),
	combout => \video|valid~2_combout\);

-- Location: LCCOMB_X29_Y23_N4
\video|valid~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|valid~0_combout\ = (((!\video|v_cnt\(6) & !\video|v_cnt\(5))) # (!\video|v_cnt\(9))) # (!\video|v_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(6),
	datab => \video|v_cnt\(7),
	datac => \video|v_cnt\(5),
	datad => \video|v_cnt\(9),
	combout => \video|valid~0_combout\);

-- Location: LCCOMB_X28_Y20_N0
\video|valid~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|valid~1_combout\ = (\video|h_cnt\(6)) # ((\video|h_cnt\(8)) # ((\video|h_cnt\(5) & \video|h_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(6),
	datab => \video|h_cnt\(5),
	datac => \video|h_cnt\(4),
	datad => \video|h_cnt\(8),
	combout => \video|valid~1_combout\);

-- Location: LCCOMB_X28_Y20_N30
\video|valid~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|valid~3_combout\ = (!\video|valid~2_combout\ & (\video|valid~0_combout\ & ((\video|h_cnt\(9)) # (\video|valid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|valid~2_combout\,
	datab => \video|h_cnt\(9),
	datac => \video|valid~0_combout\,
	datad => \video|valid~1_combout\,
	combout => \video|valid~3_combout\);

-- Location: LCCOMB_X29_Y8_N10
\video|valid~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|valid~6_combout\ = (\video|valid~5_combout\ & (!\video|LessThan3~1_combout\ & (!\video|LessThan4~2_combout\ & \video|valid~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|valid~5_combout\,
	datab => \video|LessThan3~1_combout\,
	datac => \video|LessThan4~2_combout\,
	datad => \video|valid~3_combout\,
	combout => \video|valid~6_combout\);

-- Location: LCCOMB_X29_Y8_N0
\vga_r[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_r[0]~reg0feeder_combout\ = \video|valid~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \video|valid~6_combout\,
	combout => \vga_r[0]~reg0feeder_combout\);

-- Location: FF_X29_Y8_N1
\vga_r[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_r[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_r[0]~reg0_q\);

-- Location: LCCOMB_X31_Y19_N20
\cnt[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[0]~7_combout\ = cnt(0) $ (VCC)
-- \cnt[0]~8\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datad => VCC,
	combout => \cnt[0]~7_combout\,
	cout => \cnt[0]~8\);

-- Location: LCCOMB_X29_Y19_N4
\ram_state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state~22_combout\ = (\ram_state.ram_render~q\ & \rtl~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_state.ram_render~q\,
	datad => \rtl~0_combout\,
	combout => \ram_state~22_combout\);

-- Location: FF_X29_Y19_N5
\ram_state.ram_check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_state~22_combout\,
	clrn => \rst~input_o\,
	ena => \ram_state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_state.ram_check~q\);

-- Location: LCCOMB_X30_Y19_N28
\Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!\video|h_cnt\(10) & !\video|h_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \video|h_cnt\(10),
	datad => \video|h_cnt\(4),
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X30_Y19_N20
\Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (\video|h_cnt\(3) & \video|h_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \video|h_cnt\(3),
	datad => \video|h_cnt\(1),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X30_Y19_N26
\Equal9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (!\video|h_cnt\(5) & (\Equal6~1_combout\ & (\Equal9~0_combout\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(5),
	datab => \Equal6~1_combout\,
	datac => \Equal9~0_combout\,
	datad => \Equal6~0_combout\,
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X31_Y19_N6
\score[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[8]~23_combout\ = (!\video|h_cnt\(2) & (!\video|h_cnt\(0) & (\Equal9~1_combout\ & \ram_state.ram_check~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(2),
	datab => \video|h_cnt\(0),
	datac => \Equal9~1_combout\,
	datad => \ram_state.ram_check~q\,
	combout => \score[8]~23_combout\);

-- Location: LCCOMB_X31_Y19_N8
\ram_state~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state~32_combout\ = (\ram_state.ram_check~q\ & (!\vram|altsyncram_component|auto_generated|q_b\(1) & (!\vram|altsyncram_component|auto_generated|q_b\(0) & \score[8]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_check~q\,
	datab => \vram|altsyncram_component|auto_generated|q_b\(1),
	datac => \vram|altsyncram_component|auto_generated|q_b\(0),
	datad => \score[8]~23_combout\,
	combout => \ram_state~32_combout\);

-- Location: LCCOMB_X31_Y19_N16
\Equal9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = ((!\Equal9~1_combout\) # (!\video|h_cnt\(0))) # (!\video|h_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(2),
	datab => \video|h_cnt\(0),
	datac => \Equal9~1_combout\,
	combout => \Equal9~2_combout\);

-- Location: LCCOMB_X31_Y19_N30
\ram_state~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state~33_combout\ = (\ram_state~32_combout\) # ((!\ram_state.ram_check~q\ & (\ram_state.ram_clr_tail~q\ & \Equal9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_check~q\,
	datab => \ram_state~32_combout\,
	datac => \ram_state.ram_clr_tail~q\,
	datad => \Equal9~2_combout\,
	combout => \ram_state~33_combout\);

-- Location: FF_X31_Y19_N31
\ram_state.ram_clr_tail\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_state~33_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_state.ram_clr_tail~q\);

-- Location: LCCOMB_X30_Y20_N8
\gen_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_cnt~0_combout\ = (gen_cnt(1) & (gen_cnt(2) $ (gen_cnt(0)))) # (!gen_cnt(1) & (gen_cnt(2) & gen_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => gen_cnt(1),
	datac => gen_cnt(2),
	datad => gen_cnt(0),
	combout => \gen_cnt~0_combout\);

-- Location: FF_X30_Y20_N9
\gen_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_cnt~0_combout\,
	clrn => \rst~input_o\,
	ena => \ram_state.ram_gen_apple~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => gen_cnt(2));

-- Location: LCCOMB_X30_Y20_N24
\gen_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_cnt~2_combout\ = (!gen_cnt(0) & ((gen_cnt(1)) # (!gen_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => gen_cnt(1),
	datab => gen_cnt(2),
	datac => gen_cnt(0),
	combout => \gen_cnt~2_combout\);

-- Location: FF_X30_Y20_N25
\gen_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_cnt~2_combout\,
	clrn => \rst~input_o\,
	ena => \ram_state.ram_gen_apple~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => gen_cnt(0));

-- Location: LCCOMB_X30_Y20_N10
\gen_cnt[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_cnt[1]~1_combout\ = gen_cnt(1) $ (((\ram_state.ram_gen_apple~q\ & gen_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_state.ram_gen_apple~q\,
	datac => gen_cnt(1),
	datad => gen_cnt(0),
	combout => \gen_cnt[1]~1_combout\);

-- Location: FF_X30_Y20_N11
\gen_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_cnt[1]~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => gen_cnt(1));

-- Location: LCCOMB_X30_Y20_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!gen_cnt(1) & (gen_cnt(2) & !gen_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => gen_cnt(1),
	datac => gen_cnt(2),
	datad => gen_cnt(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X29_Y19_N22
\ram_state~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state~28_combout\ = (!\ram_state.ram_gen_apple~0_combout\ & ((\ram_state.ram_gen_apple~q\ & ((!\Equal0~0_combout\))) # (!\ram_state.ram_gen_apple~q\ & (!\ram_state.ram_clr_tail~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_gen_apple~q\,
	datab => \ram_state.ram_clr_tail~q\,
	datac => \Equal0~0_combout\,
	datad => \ram_state.ram_gen_apple~0_combout\,
	combout => \ram_state~28_combout\);

-- Location: LCCOMB_X29_Y19_N18
\ram_state.ram_gen_apple~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state.ram_gen_apple~1_combout\ = ((\ram_state.ram_gen_apple~q\ & (\Equal0~0_combout\)) # (!\ram_state.ram_gen_apple~q\ & ((\ram_state.ram_clr_tail~q\)))) # (!\ram_state.ram_clr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_gen_apple~q\,
	datab => \ram_state.ram_clr~q\,
	datac => \Equal0~0_combout\,
	datad => \ram_state.ram_clr_tail~q\,
	combout => \ram_state.ram_gen_apple~1_combout\);

-- Location: FF_X29_Y19_N15
\ram_state.ram_set_apple\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_state.ram_gen_apple~1_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ram_state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_state.ram_set_apple~q\);

-- Location: LCCOMB_X30_Y20_N0
\vaddr_write[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write[6]~2_combout\ = (!\ram_state.ram_set_apple~q\ & \ram_state.ram_clr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_set_apple~q\,
	datad => \ram_state.ram_clr~q\,
	combout => \vaddr_write[6]~2_combout\);

-- Location: LCCOMB_X30_Y20_N22
\vaddr_write[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write[6]~3_combout\ = ((\ram_state.ram_set_head~q\ & !\ram_state.ram_set_apple~q\)) # (!\ram_state.ram_clr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_state.ram_clr~q\,
	datac => \ram_state.ram_set_head~q\,
	datad => \ram_state.ram_set_apple~q\,
	combout => \vaddr_write[6]~3_combout\);

-- Location: LCCOMB_X29_Y21_N8
\LFSR8_11D|LFSR~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LFSR8_11D|LFSR~2_combout\ = \LFSR8_11D|LFSR\(1) $ (!\LFSR8_11D|LFSR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR8_11D|LFSR\(1),
	datad => \LFSR8_11D|LFSR\(7),
	combout => \LFSR8_11D|LFSR~2_combout\);

-- Location: FF_X29_Y21_N9
\LFSR8_11D|LFSR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR8_11D|LFSR~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR8_11D|LFSR\(2));

-- Location: LCCOMB_X29_Y21_N10
\LFSR8_11D|LFSR~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LFSR8_11D|LFSR~1_combout\ = \LFSR8_11D|LFSR\(2) $ (!\LFSR8_11D|LFSR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LFSR8_11D|LFSR\(2),
	datad => \LFSR8_11D|LFSR\(7),
	combout => \LFSR8_11D|LFSR~1_combout\);

-- Location: FF_X29_Y21_N11
\LFSR8_11D|LFSR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR8_11D|LFSR~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR8_11D|LFSR\(3));

-- Location: LCCOMB_X29_Y21_N22
\LFSR8_11D|LFSR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LFSR8_11D|LFSR~0_combout\ = \LFSR8_11D|LFSR\(7) $ (!\LFSR8_11D|LFSR\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LFSR8_11D|LFSR\(7),
	datad => \LFSR8_11D|LFSR\(3),
	combout => \LFSR8_11D|LFSR~0_combout\);

-- Location: FF_X29_Y21_N23
\LFSR8_11D|LFSR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR8_11D|LFSR~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR8_11D|LFSR\(4));

-- Location: FF_X29_Y21_N3
\LFSR8_11D|LFSR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LFSR8_11D|LFSR\(4),
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR8_11D|LFSR\(5));

-- Location: FF_X29_Y21_N27
\LFSR8_11D|LFSR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LFSR8_11D|LFSR\(5),
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR8_11D|LFSR\(6));

-- Location: FF_X29_Y21_N25
\LFSR8_11D|LFSR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LFSR8_11D|LFSR\(6),
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR8_11D|LFSR\(7));

-- Location: LCCOMB_X29_Y21_N30
\LFSR8_11D|LFSR[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LFSR8_11D|LFSR[0]~feeder_combout\ = \LFSR8_11D|LFSR\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR8_11D|LFSR\(7),
	combout => \LFSR8_11D|LFSR[0]~feeder_combout\);

-- Location: FF_X29_Y21_N31
\LFSR8_11D|LFSR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR8_11D|LFSR[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR8_11D|LFSR\(0));

-- Location: LCCOMB_X29_Y21_N14
\LFSR8_11D|LFSR[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LFSR8_11D|LFSR[1]~feeder_combout\ = \LFSR8_11D|LFSR\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR8_11D|LFSR\(0),
	combout => \LFSR8_11D|LFSR[1]~feeder_combout\);

-- Location: FF_X29_Y21_N15
\LFSR8_11D|LFSR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR8_11D|LFSR[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR8_11D|LFSR\(1));

-- Location: LCCOMB_X29_Y19_N16
\appl_pos_y[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \appl_pos_y[3]~0_combout\ = (((\ram_state.ram_gen_apple~q\ & !\Equal0~0_combout\)) # (!\vram|altsyncram_component|auto_generated|q_b\(0))) # (!\ram_state.ram_clr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_gen_apple~q\,
	datab => \ram_state.ram_clr~q\,
	datac => \Equal0~0_combout\,
	datad => \vram|altsyncram_component|auto_generated|q_b\(0),
	combout => \appl_pos_y[3]~0_combout\);

-- Location: LCCOMB_X29_Y19_N6
\appl_pos_y[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \appl_pos_y[3]~1_combout\ = (!\appl_pos_y[3]~0_combout\ & ((\ram_state.ram_gen_apple~q\) # ((\score[8]~23_combout\ & \vram|altsyncram_component|auto_generated|q_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score[8]~23_combout\,
	datab => \vram|altsyncram_component|auto_generated|q_b\(1),
	datac => \ram_state.ram_gen_apple~q\,
	datad => \appl_pos_y[3]~0_combout\,
	combout => \appl_pos_y[3]~1_combout\);

-- Location: FF_X28_Y21_N13
\appl_pos_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LFSR8_11D|LFSR\(1),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \appl_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => appl_pos_x(1));

-- Location: FF_X29_Y21_N19
\appl_pos_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LFSR8_11D|LFSR\(5),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \appl_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => appl_pos_y(1));

-- Location: LCCOMB_X29_Y21_N6
\appl_pos_y[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \appl_pos_y[0]~2_combout\ = !\LFSR8_11D|LFSR\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LFSR8_11D|LFSR\(4),
	combout => \appl_pos_y[0]~2_combout\);

-- Location: FF_X29_Y21_N7
\appl_pos_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \appl_pos_y[0]~2_combout\,
	clrn => \rst~input_o\,
	ena => \appl_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => appl_pos_y(0));

-- Location: FF_X28_Y21_N11
\appl_pos_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LFSR8_11D|LFSR\(0),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \appl_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => appl_pos_x(0));

-- Location: LCCOMB_X28_Y21_N10
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (appl_pos_y(0) & (appl_pos_x(0) $ (GND))) # (!appl_pos_y(0) & (!appl_pos_x(0) & VCC))
-- \Add2~1\ = CARRY((appl_pos_y(0) & !appl_pos_x(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => appl_pos_y(0),
	datab => appl_pos_x(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X28_Y21_N12
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (appl_pos_x(1) & ((appl_pos_y(1) & ((\Add2~1\) # (GND))) # (!appl_pos_y(1) & (!\Add2~1\)))) # (!appl_pos_x(1) & ((appl_pos_y(1) & (!\Add2~1\)) # (!appl_pos_y(1) & (\Add2~1\ & VCC))))
-- \Add2~3\ = CARRY((appl_pos_x(1) & ((appl_pos_y(1)) # (!\Add2~1\))) # (!appl_pos_x(1) & (appl_pos_y(1) & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => appl_pos_x(1),
	datab => appl_pos_y(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X34_Y21_N0
\Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = tail_pos_y(0) $ (VCC)
-- \Add11~1\ = CARRY(tail_pos_y(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tail_pos_y(0),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X35_Y21_N12
\Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = tail_pos_y(0) $ (VCC)
-- \Add10~1\ = CARRY(tail_pos_y(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(0),
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X35_Y21_N14
\Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (tail_pos_y(1) & (!\Add10~1\)) # (!tail_pos_y(1) & (\Add10~1\ & VCC))
-- \Add10~3\ = CARRY((tail_pos_y(1) & !\Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(1),
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X35_Y21_N16
\Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (tail_pos_y(2) & ((GND) # (!\Add10~3\))) # (!tail_pos_y(2) & (\Add10~3\ $ (GND)))
-- \Add10~5\ = CARRY((tail_pos_y(2)) # (!\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(2),
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X35_Y21_N18
\Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (tail_pos_y(3) & (\Add10~5\ & VCC)) # (!tail_pos_y(3) & (!\Add10~5\))
-- \Add10~7\ = CARRY((!tail_pos_y(3) & !\Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_pos_y(3),
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X34_Y21_N4
\Add11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~7_combout\ = (tail_pos_y(2) & (\Add11~6\ $ (GND))) # (!tail_pos_y(2) & (!\Add11~6\ & VCC))
-- \Add11~8\ = CARRY((tail_pos_y(2) & !\Add11~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(2),
	datad => VCC,
	cin => \Add11~6\,
	combout => \Add11~7_combout\,
	cout => \Add11~8\);

-- Location: LCCOMB_X34_Y21_N6
\Add11~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~9_combout\ = (tail_pos_y(3) & (!\Add11~8\)) # (!tail_pos_y(3) & ((\Add11~8\) # (GND)))
-- \Add11~10\ = CARRY((!\Add11~8\) # (!tail_pos_y(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_pos_y(3),
	datad => VCC,
	cin => \Add11~8\,
	combout => \Add11~9_combout\,
	cout => \Add11~10\);

-- Location: LCCOMB_X34_Y21_N20
\Add11~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~11_combout\ = (\Add11~2_combout\ & ((\Add10~6_combout\) # ((\Add11~3_combout\ & \Add11~9_combout\)))) # (!\Add11~2_combout\ & (((\Add11~3_combout\ & \Add11~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datab => \Add10~6_combout\,
	datac => \Add11~3_combout\,
	datad => \Add11~9_combout\,
	combout => \Add11~11_combout\);

-- Location: LCCOMB_X26_Y22_N4
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = vaddr_write(0) $ (VCC)
-- \Add0~1\ = CARRY(vaddr_write(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vaddr_write(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X31_Y21_N10
\tail_pos_x[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_pos_x[0]~6_combout\ = tail_pos_x(0) $ (VCC)
-- \tail_pos_x[0]~7\ = CARRY(tail_pos_x(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_x(0),
	datad => VCC,
	combout => \tail_pos_x[0]~6_combout\,
	cout => \tail_pos_x[0]~7\);

-- Location: LCCOMB_X31_Y21_N0
\Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = tail_pos_x(0) $ (VCC)
-- \Add9~1\ = CARRY(tail_pos_x(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_x(0),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X31_Y21_N12
\tail_pos_x[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_pos_x[1]~8_combout\ = (tail_pos_x(1) & (!\tail_pos_x[0]~7\)) # (!tail_pos_x(1) & ((\tail_pos_x[0]~7\) # (GND)))
-- \tail_pos_x[1]~9\ = CARRY((!\tail_pos_x[0]~7\) # (!tail_pos_x(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_x(1),
	datad => VCC,
	cin => \tail_pos_x[0]~7\,
	combout => \tail_pos_x[1]~8_combout\,
	cout => \tail_pos_x[1]~9\);

-- Location: LCCOMB_X31_Y21_N14
\tail_pos_x[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_pos_x[2]~10_combout\ = (tail_pos_x(2) & (\tail_pos_x[1]~9\ $ (GND))) # (!tail_pos_x(2) & (!\tail_pos_x[1]~9\ & VCC))
-- \tail_pos_x[2]~11\ = CARRY((tail_pos_x(2) & !\tail_pos_x[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_pos_x(2),
	datad => VCC,
	cin => \tail_pos_x[1]~9\,
	combout => \tail_pos_x[2]~10_combout\,
	cout => \tail_pos_x[2]~11\);

-- Location: LCCOMB_X31_Y21_N2
\Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (tail_pos_x(1) & (\Add9~1\ & VCC)) # (!tail_pos_x(1) & (!\Add9~1\))
-- \Add9~3\ = CARRY((!tail_pos_x(1) & !\Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_x(1),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X31_Y21_N4
\Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (tail_pos_x(2) & ((GND) # (!\Add9~3\))) # (!tail_pos_x(2) & (\Add9~3\ $ (GND)))
-- \Add9~5\ = CARRY((tail_pos_x(2)) # (!\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_pos_x(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X31_Y21_N24
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Add9~4_combout\ & ((\LessThan2~0_combout\) # (tail_pos_x(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datac => \Add9~4_combout\,
	datad => tail_pos_x(4),
	combout => \Mux7~0_combout\);

-- Location: FF_X28_Y21_N15
\appl_pos_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LFSR8_11D|LFSR\(2),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \appl_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => appl_pos_x(2));

-- Location: LCCOMB_X29_Y21_N12
\appl_pos_y[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \appl_pos_y[2]~4_combout\ = !\LFSR8_11D|LFSR\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LFSR8_11D|LFSR\(6),
	combout => \appl_pos_y[2]~4_combout\);

-- Location: FF_X29_Y21_N13
\appl_pos_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \appl_pos_y[2]~4_combout\,
	clrn => \rst~input_o\,
	ena => \appl_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => appl_pos_y(2));

-- Location: LCCOMB_X28_Y21_N14
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((appl_pos_x(2) $ (appl_pos_y(2) $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((appl_pos_x(2) & (appl_pos_y(2) & !\Add2~3\)) # (!appl_pos_x(2) & ((appl_pos_y(2)) # (!\Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => appl_pos_x(2),
	datab => appl_pos_y(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X26_Y22_N6
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (vaddr_write(1) & (!\Add0~1\)) # (!vaddr_write(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!vaddr_write(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vaddr_write(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X26_Y22_N8
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (vaddr_write(2) & (\Add0~3\ $ (GND))) # (!vaddr_write(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((vaddr_write(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vaddr_write(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X30_Y21_N12
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (tail_pos_x(0) & (tail_pos_y(0) $ (VCC))) # (!tail_pos_x(0) & (tail_pos_y(0) & VCC))
-- \Add7~1\ = CARRY((tail_pos_x(0) & tail_pos_y(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_x(0),
	datab => tail_pos_y(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X30_Y21_N14
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (tail_pos_y(1) & ((tail_pos_x(1) & (!\Add7~1\)) # (!tail_pos_x(1) & ((\Add7~1\) # (GND))))) # (!tail_pos_y(1) & ((tail_pos_x(1) & (\Add7~1\ & VCC)) # (!tail_pos_x(1) & (!\Add7~1\))))
-- \Add7~3\ = CARRY((tail_pos_y(1) & ((!\Add7~1\) # (!tail_pos_x(1)))) # (!tail_pos_y(1) & (!tail_pos_x(1) & !\Add7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(1),
	datab => tail_pos_x(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X30_Y21_N16
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((tail_pos_y(2) $ (tail_pos_x(2) $ (!\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((tail_pos_y(2) & ((tail_pos_x(2)) # (!\Add7~3\))) # (!tail_pos_y(2) & (tail_pos_x(2) & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(2),
	datab => tail_pos_x(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: CLKCTRL_G14
\rtl~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: IOIBUF_X53_Y22_N8
\row[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row(2),
	o => \row[2]~input_o\);

-- Location: IOIBUF_X53_Y22_N1
\row[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row(1),
	o => \row[1]~input_o\);

-- Location: IOIBUF_X53_Y21_N15
\row[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row(3),
	o => \row[3]~input_o\);

-- Location: IOIBUF_X53_Y23_N22
\row[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row(0),
	o => \row[0]~input_o\);

-- Location: LCCOMB_X36_Y23_N6
\key|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|Equal1~0_combout\ = (\row[2]~input_o\ & (\row[1]~input_o\ & (\row[3]~input_o\ & \row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[0]~input_o\,
	combout => \key|Equal1~0_combout\);

-- Location: LCCOMB_X38_Y22_N28
\key|rowdown[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|rowdown[2]~2_combout\ = (\rst~input_o\ & ((\key|Decoder0~2_combout\ & ((\key|rowdown\(2)))) # (!\key|Decoder0~2_combout\ & (!\key|Equal1~0_combout\)))) # (!\rst~input_o\ & (((\key|rowdown\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \key|Equal1~0_combout\,
	datac => \key|rowdown\(2),
	datad => \key|Decoder0~2_combout\,
	combout => \key|rowdown[2]~2_combout\);

-- Location: FF_X38_Y22_N29
\key|rowdown[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key|cnt\(14),
	d => \key|rowdown[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|rowdown\(2));

-- Location: LCCOMB_X36_Y22_N30
\key|rowdown[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|rowdown[3]~1_combout\ = (\rst~input_o\ & ((\key|Decoder0~3_combout\ & ((\key|rowdown\(3)))) # (!\key|Decoder0~3_combout\ & (!\key|Equal1~0_combout\)))) # (!\rst~input_o\ & (((\key|rowdown\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key|Equal1~0_combout\,
	datab => \rst~input_o\,
	datac => \key|rowdown\(3),
	datad => \key|Decoder0~3_combout\,
	combout => \key|rowdown[3]~1_combout\);

-- Location: FF_X36_Y22_N31
\key|rowdown[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key|cnt\(14),
	d => \key|rowdown[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|rowdown\(3));

-- Location: CLKCTRL_G9
\key|cnt[14]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key|cnt[14]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key|cnt[14]~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y22_N26
\key|rowdown[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|rowdown[0]~0_combout\ = (\rst~input_o\ & ((\key|Decoder0~0_combout\ & (\key|rowdown\(0))) # (!\key|Decoder0~0_combout\ & ((!\key|Equal1~0_combout\))))) # (!\rst~input_o\ & (\key|rowdown\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key|rowdown\(0),
	datab => \key|Equal1~0_combout\,
	datac => \rst~input_o\,
	datad => \key|Decoder0~0_combout\,
	combout => \key|rowdown[0]~0_combout\);

-- Location: LCCOMB_X37_Y22_N14
\key|rowdown[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|rowdown[0]~feeder_combout\ = \key|rowdown[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key|rowdown[0]~0_combout\,
	combout => \key|rowdown[0]~feeder_combout\);

-- Location: FF_X37_Y22_N15
\key|rowdown[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key|cnt[14]~clkctrl_outclk\,
	d => \key|rowdown[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|rowdown\(0));

-- Location: LCCOMB_X36_Y22_N22
\key|rowdown[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|rowdown[1]~3_combout\ = (\key|Decoder0~1_combout\ & (((\key|rowdown\(1))))) # (!\key|Decoder0~1_combout\ & ((\rst~input_o\ & (!\key|Equal1~0_combout\)) # (!\rst~input_o\ & ((\key|rowdown\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key|Equal1~0_combout\,
	datab => \key|Decoder0~1_combout\,
	datac => \key|rowdown\(1),
	datad => \rst~input_o\,
	combout => \key|rowdown[1]~3_combout\);

-- Location: FF_X36_Y22_N23
\key|rowdown[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key|cnt\(14),
	d => \key|rowdown[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|rowdown\(1));

-- Location: LCCOMB_X37_Y22_N30
\rtl~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = LCELL((\key|rowdown\(2)) # ((\key|rowdown\(3)) # ((\key|rowdown\(0)) # (\key|rowdown\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key|rowdown\(2),
	datab => \key|rowdown\(3),
	datac => \key|rowdown\(0),
	datad => \key|rowdown\(1),
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G6
\rtl~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: LCCOMB_X35_Y22_N14
\key|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|Selector1~0_combout\ = \row[3]~input_o\ $ (((\key|col\(3) & ((\key|col\(1)) # (!\key|col\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key|col\(1),
	datab => \row[3]~input_o\,
	datac => \key|col\(2),
	datad => \key|col\(3),
	combout => \key|Selector1~0_combout\);

-- Location: LCCOMB_X36_Y23_N10
\key|code[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|code[2]~0_combout\ = (\row[2]~input_o\ & ((\row[1]~input_o\ & (\row[3]~input_o\ $ (!\row[0]~input_o\))) # (!\row[1]~input_o\ & ((!\row[0]~input_o\) # (!\row[3]~input_o\))))) # (!\row[2]~input_o\ & (((!\row[0]~input_o\) # (!\row[3]~input_o\)) # 
-- (!\row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[2]~input_o\,
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[0]~input_o\,
	combout => \key|code[2]~0_combout\);

-- Location: LCCOMB_X36_Y22_N18
\key|code[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|code[2]~1_combout\ = (\key|col\(1) & ((\key|col\(2) & (\key|col\(0) $ (!\key|col\(3)))) # (!\key|col\(2) & ((!\key|col\(3)) # (!\key|col\(0)))))) # (!\key|col\(1) & (((!\key|col\(3)) # (!\key|col\(0))) # (!\key|col\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key|col\(1),
	datab => \key|col\(2),
	datac => \key|col\(0),
	datad => \key|col\(3),
	combout => \key|code[2]~1_combout\);

-- Location: LCCOMB_X36_Y22_N24
\key|code[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|code[2]~2_combout\ = (!\key|code[2]~0_combout\ & !\key|code[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key|code[2]~0_combout\,
	datad => \key|code[2]~1_combout\,
	combout => \key|code[2]~2_combout\);

-- Location: FF_X35_Y22_N15
\key|code[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key|cnt[14]~clkctrl_outclk\,
	d => \key|Selector1~0_combout\,
	clrn => \rst~input_o\,
	ena => \key|code[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|code\(2));

-- Location: LCCOMB_X34_Y22_N30
\head_dir[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \head_dir[0]~3_combout\ = !\key|code\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key|code\(2),
	combout => \head_dir[0]~3_combout\);

-- Location: LCCOMB_X35_Y22_N12
\key|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|Selector0~0_combout\ = (\key|col\(3) & (((!\key|col\(1) & !\row[3]~input_o\)) # (!\key|col\(2)))) # (!\key|col\(3) & (((\row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key|col\(1),
	datab => \row[3]~input_o\,
	datac => \key|col\(2),
	datad => \key|col\(3),
	combout => \key|Selector0~0_combout\);

-- Location: FF_X35_Y22_N13
\key|code[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key|cnt[14]~clkctrl_outclk\,
	d => \key|Selector0~0_combout\,
	clrn => \rst~input_o\,
	ena => \key|code[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|code\(3));

-- Location: LCCOMB_X36_Y23_N4
\key|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|Selector2~0_combout\ = (\row[3]~input_o\ & ((!\row[2]~input_o\) # (!\row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row[1]~input_o\,
	datac => \row[3]~input_o\,
	datad => \row[2]~input_o\,
	combout => \key|Selector2~0_combout\);

-- Location: FF_X35_Y22_N11
\key|code[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key|cnt[14]~clkctrl_outclk\,
	asdata => \key|Selector2~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \key|code[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|code\(1));

-- Location: LCCOMB_X35_Y22_N10
\key|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key|Selector3~0_combout\ = (\row[3]~input_o\ & ((\row[1]~input_o\) # (!\row[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~input_o\,
	datab => \row[2]~input_o\,
	datad => \row[3]~input_o\,
	combout => \key|Selector3~0_combout\);

-- Location: FF_X35_Y22_N25
\key|code[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key|cnt[14]~clkctrl_outclk\,
	asdata => \key|Selector3~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \key|code[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key|code\(0));

-- Location: LCCOMB_X35_Y22_N24
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\key|code\(2) & (\key|code\(1))) # (!\key|code\(2) & ((\key|code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key|code\(1),
	datac => \key|code\(0),
	datad => \key|code\(2),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X34_Y22_N28
\head_dir[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \head_dir[1]~feeder_combout\ = \Mux20~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux20~0_combout\,
	combout => \head_dir[1]~feeder_combout\);

-- Location: FF_X34_Y22_N29
\head_dir[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \head_dir[1]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \head_dir[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => head_dir(1));

-- Location: LCCOMB_X34_Y22_N22
\head_dir[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \head_dir[1]~0_combout\ = (\key|code\(1) & (((head_dir(1) & head_dir(0))) # (!\key|code\(0)))) # (!\key|code\(1) & ((\key|code\(0)) # ((!head_dir(1) & head_dir(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_dir(1),
	datab => head_dir(0),
	datac => \key|code\(1),
	datad => \key|code\(0),
	combout => \head_dir[1]~0_combout\);

-- Location: LCCOMB_X35_Y22_N22
\head_dir[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \head_dir[1]~1_combout\ = ((!head_dir(0) & (\key|code\(0) $ (!head_dir(1))))) # (!\key|code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key|code\(1),
	datab => \key|code\(0),
	datac => head_dir(0),
	datad => head_dir(1),
	combout => \head_dir[1]~1_combout\);

-- Location: LCCOMB_X34_Y22_N0
\head_dir[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \head_dir[1]~2_combout\ = (!\key|code\(3) & ((\key|code\(2) & (!\head_dir[1]~0_combout\)) # (!\key|code\(2) & ((!\head_dir[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key|code\(3),
	datab => \key|code\(2),
	datac => \head_dir[1]~0_combout\,
	datad => \head_dir[1]~1_combout\,
	combout => \head_dir[1]~2_combout\);

-- Location: FF_X34_Y22_N17
\head_dir[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	asdata => \head_dir[0]~3_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \head_dir[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => head_dir(0));

-- Location: LCCOMB_X35_Y22_N0
\Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = head_pos_x(0) $ (GND)
-- \Add12~1\ = CARRY(!head_pos_x(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_x(0),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X34_Y22_N6
\Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = head_pos_x(0) $ (GND)
-- \Add13~1\ = CARRY(!head_pos_x(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_x(0),
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X35_Y22_N2
\Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (head_pos_x(1) & (!\Add12~1\)) # (!head_pos_x(1) & ((\Add12~1\) # (GND)))
-- \Add12~3\ = CARRY((!\Add12~1\) # (!head_pos_x(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => head_pos_x(1),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X35_Y22_N4
\Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (head_pos_x(2) & (\Add12~3\ $ (GND))) # (!head_pos_x(2) & (!\Add12~3\ & VCC))
-- \Add12~5\ = CARRY((head_pos_x(2) & !\Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_x(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X35_Y22_N6
\Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (head_pos_x(3) & (!\Add12~5\)) # (!head_pos_x(3) & ((\Add12~5\) # (GND)))
-- \Add12~7\ = CARRY((!\Add12~5\) # (!head_pos_x(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_x(3),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X35_Y22_N8
\Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = \Add12~7\ $ (!head_pos_x(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => head_pos_x(4),
	cin => \Add12~7\,
	combout => \Add12~8_combout\);

-- Location: LCCOMB_X34_Y22_N12
\Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (head_pos_x(3) & (\Add13~5\ & VCC)) # (!head_pos_x(3) & (!\Add13~5\))
-- \Add13~7\ = CARRY((!head_pos_x(3) & !\Add13~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => head_pos_x(3),
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X34_Y22_N14
\Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = \Add13~7\ $ (head_pos_x(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => head_pos_x(4),
	cin => \Add13~7\,
	combout => \Add13~8_combout\);

-- Location: LCCOMB_X34_Y22_N24
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\head_pos_x[4]~0_combout\ & ((head_dir(0) & ((\Add13~8_combout\))) # (!head_dir(0) & (\Add12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \head_pos_x[4]~0_combout\,
	datab => \Add12~8_combout\,
	datac => \Add13~8_combout\,
	datad => head_dir(0),
	combout => \Mux15~0_combout\);

-- Location: FF_X34_Y22_N25
\head_pos_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux15~0_combout\,
	clrn => \rst~input_o\,
	ena => ALT_INV_head_dir(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => head_pos_x(4));

-- Location: LCCOMB_X35_Y22_N28
\LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (head_pos_x(1)) # ((head_pos_x(4)) # ((head_pos_x(2)) # (head_pos_x(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_x(1),
	datab => head_pos_x(4),
	datac => head_pos_x(2),
	datad => head_pos_x(3),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X34_Y22_N20
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Add13~0_combout\ & (head_dir(0) & ((\LessThan6~0_combout\) # (!head_pos_x(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => \LessThan6~0_combout\,
	datac => head_pos_x(0),
	datad => head_dir(0),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X34_Y22_N16
\head_pos_x[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \head_pos_x[4]~1_combout\ = (head_pos_x(3) & head_pos_x(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => head_pos_x(3),
	datad => head_pos_x(4),
	combout => \head_pos_x[4]~1_combout\);

-- Location: LCCOMB_X35_Y22_N30
\Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (!\Mux19~0_combout\ & ((head_dir(0)) # ((\head_pos_x[4]~1_combout\) # (!\Add12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_dir(0),
	datab => \Add12~0_combout\,
	datac => \Mux19~0_combout\,
	datad => \head_pos_x[4]~1_combout\,
	combout => \Mux19~1_combout\);

-- Location: FF_X35_Y22_N31
\head_pos_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux19~1_combout\,
	clrn => \rst~input_o\,
	ena => ALT_INV_head_dir(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => head_pos_x(0));

-- Location: LCCOMB_X34_Y22_N8
\Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (head_pos_x(1) & (\Add13~1\ & VCC)) # (!head_pos_x(1) & (!\Add13~1\))
-- \Add13~3\ = CARRY((!head_pos_x(1) & !\Add13~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_x(1),
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X35_Y22_N16
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (head_dir(0) & (\Add13~2_combout\ & ((\LessThan6~0_combout\) # (!head_pos_x(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_dir(0),
	datab => head_pos_x(0),
	datac => \LessThan6~0_combout\,
	datad => \Add13~2_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X35_Y22_N20
\Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (!\head_pos_x[4]~0_combout\ & ((\Mux18~0_combout\) # ((\Add12~2_combout\ & !head_dir(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \head_pos_x[4]~0_combout\,
	datab => \Add12~2_combout\,
	datac => head_dir(0),
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: FF_X35_Y22_N21
\head_pos_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux18~1_combout\,
	clrn => \rst~input_o\,
	ena => ALT_INV_head_dir(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => head_pos_x(1));

-- Location: LCCOMB_X34_Y22_N10
\Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = (head_pos_x(2) & ((GND) # (!\Add13~3\))) # (!head_pos_x(2) & (\Add13~3\ $ (GND)))
-- \Add13~5\ = CARRY((head_pos_x(2)) # (!\Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_x(2),
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X34_Y22_N2
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!\head_pos_x[4]~0_combout\ & ((head_dir(0) & (\Add13~6_combout\)) # (!head_dir(0) & ((\Add12~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datab => head_dir(0),
	datac => \head_pos_x[4]~0_combout\,
	datad => \Add12~6_combout\,
	combout => \Mux16~0_combout\);

-- Location: FF_X34_Y22_N3
\head_pos_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux16~0_combout\,
	clrn => \rst~input_o\,
	ena => ALT_INV_head_dir(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => head_pos_x(3));

-- Location: LCCOMB_X34_Y22_N26
\head_pos_x[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \head_pos_x[4]~0_combout\ = (head_pos_x(3) & (head_pos_x(4) & !head_dir(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => head_pos_x(3),
	datac => head_pos_x(4),
	datad => head_dir(0),
	combout => \head_pos_x[4]~0_combout\);

-- Location: LCCOMB_X35_Y22_N18
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (head_dir(0) & (\Add13~4_combout\ & ((\LessThan6~0_combout\) # (!head_pos_x(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_dir(0),
	datab => head_pos_x(0),
	datac => \LessThan6~0_combout\,
	datad => \Add13~4_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X35_Y22_N26
\Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (!\head_pos_x[4]~0_combout\ & ((\Mux17~0_combout\) # ((\Add12~4_combout\ & !head_dir(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \head_pos_x[4]~0_combout\,
	datab => \Add12~4_combout\,
	datac => head_dir(0),
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: FF_X35_Y22_N27
\head_pos_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux17~1_combout\,
	clrn => \rst~input_o\,
	ena => ALT_INV_head_dir(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => head_pos_x(2));

-- Location: LCCOMB_X31_Y22_N2
\Add15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~0_combout\ = head_pos_y(0) $ (VCC)
-- \Add15~1\ = CARRY(head_pos_y(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => head_pos_y(0),
	datad => VCC,
	combout => \Add15~0_combout\,
	cout => \Add15~1\);

-- Location: LCCOMB_X32_Y22_N22
\Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = head_pos_y(0) $ (VCC)
-- \Add14~1\ = CARRY(head_pos_y(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => head_pos_y(0),
	datad => VCC,
	combout => \Add14~0_combout\,
	cout => \Add14~1\);

-- Location: LCCOMB_X31_Y22_N26
\Add15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~3_combout\ = (head_dir(0) & \LessThan8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => head_dir(0),
	datad => \LessThan8~0_combout\,
	combout => \Add15~3_combout\);

-- Location: LCCOMB_X32_Y22_N26
\Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~4_combout\ = (head_pos_y(2) & ((GND) # (!\Add14~3\))) # (!head_pos_y(2) & (\Add14~3\ $ (GND)))
-- \Add14~5\ = CARRY((head_pos_y(2)) # (!\Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => head_pos_y(2),
	datad => VCC,
	cin => \Add14~3\,
	combout => \Add14~4_combout\,
	cout => \Add14~5\);

-- Location: LCCOMB_X32_Y22_N28
\Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~6_combout\ = (head_pos_y(3) & (\Add14~5\ & VCC)) # (!head_pos_y(3) & (!\Add14~5\))
-- \Add14~7\ = CARRY((!head_pos_y(3) & !\Add14~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_y(3),
	datad => VCC,
	cin => \Add14~5\,
	combout => \Add14~6_combout\,
	cout => \Add14~7\);

-- Location: LCCOMB_X32_Y22_N30
\Add14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~8_combout\ = head_pos_y(4) $ (\Add14~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => head_pos_y(4),
	cin => \Add14~7\,
	combout => \Add14~8_combout\);

-- Location: LCCOMB_X31_Y22_N8
\Add15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~9_combout\ = (head_pos_y(3) & (!\Add15~8\)) # (!head_pos_y(3) & ((\Add15~8\) # (GND)))
-- \Add15~10\ = CARRY((!\Add15~8\) # (!head_pos_y(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => head_pos_y(3),
	datad => VCC,
	cin => \Add15~8\,
	combout => \Add15~9_combout\,
	cout => \Add15~10\);

-- Location: LCCOMB_X31_Y22_N10
\Add15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~14_combout\ = \Add15~10\ $ (!head_pos_y(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => head_pos_y(4),
	cin => \Add15~10\,
	combout => \Add15~14_combout\);

-- Location: LCCOMB_X31_Y22_N0
\Add15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~16_combout\ = (head_dir(0) & (\LessThan8~0_combout\ & ((\Add15~14_combout\)))) # (!head_dir(0) & (((\Add14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datab => head_dir(0),
	datac => \Add14~8_combout\,
	datad => \Add15~14_combout\,
	combout => \Add15~16_combout\);

-- Location: FF_X31_Y22_N1
\head_pos_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Add15~16_combout\,
	clrn => \rst~input_o\,
	ena => head_dir(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => head_pos_y(4));

-- Location: LCCOMB_X34_Y22_N4
\LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (head_pos_y(2)) # ((head_pos_y(3)) # ((head_pos_y(4)) # (!head_pos_y(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_y(2),
	datab => head_pos_y(3),
	datac => head_pos_y(4),
	datad => head_pos_y(1),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X34_Y22_N18
\Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~2_combout\ = (!head_dir(0) & ((head_pos_y(0)) # (\LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_y(0),
	datac => \LessThan7~0_combout\,
	datad => head_dir(0),
	combout => \Add15~2_combout\);

-- Location: LCCOMB_X31_Y22_N20
\Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~4_combout\ = (\Add15~0_combout\ & ((\Add15~3_combout\) # ((\Add14~0_combout\ & \Add15~2_combout\)))) # (!\Add15~0_combout\ & (\Add14~0_combout\ & ((\Add15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~0_combout\,
	datab => \Add14~0_combout\,
	datac => \Add15~3_combout\,
	datad => \Add15~2_combout\,
	combout => \Add15~4_combout\);

-- Location: FF_X31_Y22_N21
\head_pos_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Add15~4_combout\,
	clrn => \rst~input_o\,
	ena => head_dir(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => head_pos_y(0));

-- Location: LCCOMB_X31_Y22_N4
\Add15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~5_combout\ = (head_pos_y(1) & ((\Add15~1\) # (GND))) # (!head_pos_y(1) & (!\Add15~1\))
-- \Add15~6\ = CARRY((head_pos_y(1)) # (!\Add15~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_y(1),
	datad => VCC,
	cin => \Add15~1\,
	combout => \Add15~5_combout\,
	cout => \Add15~6\);

-- Location: LCCOMB_X31_Y22_N6
\Add15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~7_combout\ = (head_pos_y(2) & (\Add15~6\ $ (GND))) # (!head_pos_y(2) & (!\Add15~6\ & VCC))
-- \Add15~8\ = CARRY((head_pos_y(2) & !\Add15~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => head_pos_y(2),
	datad => VCC,
	cin => \Add15~6\,
	combout => \Add15~7_combout\,
	cout => \Add15~8\);

-- Location: LCCOMB_X31_Y22_N12
\Add15~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~11_combout\ = (\Add15~9_combout\ & ((\Add15~3_combout\) # ((\Add14~6_combout\ & \Add15~2_combout\)))) # (!\Add15~9_combout\ & (\Add14~6_combout\ & ((\Add15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~9_combout\,
	datab => \Add14~6_combout\,
	datac => \Add15~3_combout\,
	datad => \Add15~2_combout\,
	combout => \Add15~11_combout\);

-- Location: FF_X31_Y22_N13
\head_pos_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Add15~11_combout\,
	clrn => \rst~input_o\,
	ena => head_dir(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => head_pos_y(3));

-- Location: LCCOMB_X32_Y22_N6
\LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = ((!head_pos_y(3) & (head_pos_y(1) & !head_pos_y(2)))) # (!head_pos_y(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_y(3),
	datab => head_pos_y(1),
	datac => head_pos_y(4),
	datad => head_pos_y(2),
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X32_Y22_N24
\Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~2_combout\ = (head_pos_y(1) & (!\Add14~1\)) # (!head_pos_y(1) & (\Add14~1\ & VCC))
-- \Add14~3\ = CARRY((head_pos_y(1) & !\Add14~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => head_pos_y(1),
	datad => VCC,
	cin => \Add14~1\,
	combout => \Add14~2_combout\,
	cout => \Add14~3\);

-- Location: LCCOMB_X31_Y22_N22
\Add15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~12_combout\ = (head_dir(0) & (((!\Add15~5_combout\)) # (!\LessThan8~0_combout\))) # (!head_dir(0) & (((!\Add14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datab => \Add15~5_combout\,
	datac => head_dir(0),
	datad => \Add14~2_combout\,
	combout => \Add15~12_combout\);

-- Location: FF_X31_Y22_N23
\head_pos_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Add15~12_combout\,
	clrn => \rst~input_o\,
	ena => head_dir(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => head_pos_y(1));

-- Location: LCCOMB_X31_Y22_N28
\Add15~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~13_combout\ = (\Add14~4_combout\ & ((\Add15~2_combout\) # ((\Add15~7_combout\ & \Add15~3_combout\)))) # (!\Add14~4_combout\ & (\Add15~7_combout\ & (\Add15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~4_combout\,
	datab => \Add15~7_combout\,
	datac => \Add15~3_combout\,
	datad => \Add15~2_combout\,
	combout => \Add15~13_combout\);

-- Location: FF_X31_Y22_N29
\head_pos_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Add15~13_combout\,
	clrn => \rst~input_o\,
	ena => head_dir(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => head_pos_y(2));

-- Location: LCCOMB_X30_Y22_N0
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (head_pos_y(0) & (head_pos_x(0) $ (GND))) # (!head_pos_y(0) & (!head_pos_x(0) & VCC))
-- \Add3~1\ = CARRY((head_pos_y(0) & !head_pos_x(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_y(0),
	datab => head_pos_x(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X30_Y22_N2
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (head_pos_x(1) & ((head_pos_y(1) & (!\Add3~1\)) # (!head_pos_y(1) & (\Add3~1\ & VCC)))) # (!head_pos_x(1) & ((head_pos_y(1) & ((\Add3~1\) # (GND))) # (!head_pos_y(1) & (!\Add3~1\))))
-- \Add3~3\ = CARRY((head_pos_x(1) & (head_pos_y(1) & !\Add3~1\)) # (!head_pos_x(1) & ((head_pos_y(1)) # (!\Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_x(1),
	datab => head_pos_y(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X30_Y22_N4
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((head_pos_x(2) $ (head_pos_y(2) $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((head_pos_x(2) & ((head_pos_y(2)) # (!\Add3~3\))) # (!head_pos_x(2) & (head_pos_y(2) & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_x(2),
	datab => head_pos_y(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X27_Y22_N6
\vaddr_write~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~19_combout\ = (\vaddr_write[6]~2_combout\ & ((\vaddr_write[6]~3_combout\ & ((\Add3~4_combout\))) # (!\vaddr_write[6]~3_combout\ & (\Add7~4_combout\)))) # (!\vaddr_write[6]~2_combout\ & (((\vaddr_write[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_write[6]~2_combout\,
	datab => \Add7~4_combout\,
	datac => \vaddr_write[6]~3_combout\,
	datad => \Add3~4_combout\,
	combout => \vaddr_write~19_combout\);

-- Location: LCCOMB_X27_Y22_N14
\vaddr_write~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~20_combout\ = (\vaddr_write[6]~2_combout\ & (((\vaddr_write~19_combout\)))) # (!\vaddr_write[6]~2_combout\ & ((\vaddr_write~19_combout\ & ((\Add0~4_combout\))) # (!\vaddr_write~19_combout\ & (\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add0~4_combout\,
	datac => \vaddr_write[6]~2_combout\,
	datad => \vaddr_write~19_combout\,
	combout => \vaddr_write~20_combout\);

-- Location: LCCOMB_X31_Y19_N10
\tail_pos_x[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_pos_x[4]~5_combout\ = (\video|h_cnt\(2) & (\video|h_cnt\(0) & (\Equal9~1_combout\ & \ram_state.ram_clr_tail~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(2),
	datab => \video|h_cnt\(0),
	datac => \Equal9~1_combout\,
	datad => \ram_state.ram_clr_tail~q\,
	combout => \tail_pos_x[4]~5_combout\);

-- Location: LCCOMB_X30_Y20_N28
\vaddr_write[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write[6]~6_combout\ = (\ram_state.ram_clr~q\ & ((\ram_state.ram_gen_apple~0_combout\) # ((\tail_pos_x[4]~5_combout\)))) # (!\ram_state.ram_clr~q\ & (((!\vaddr_write[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_gen_apple~0_combout\,
	datab => \ram_state.ram_clr~q\,
	datac => \vaddr_write[6]~1_combout\,
	datad => \tail_pos_x[4]~5_combout\,
	combout => \vaddr_write[6]~6_combout\);

-- Location: FF_X27_Y22_N15
\vaddr_write[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_write~20_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_write[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_write(2));

-- Location: LCCOMB_X26_Y22_N10
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (vaddr_write(3) & (!\Add0~5\)) # (!vaddr_write(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!vaddr_write(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vaddr_write(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X28_Y21_N17
\appl_pos_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LFSR8_11D|LFSR\(3),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \appl_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => appl_pos_x(3));

-- Location: LCCOMB_X29_Y21_N16
\appl_pos_y[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \appl_pos_y[3]~3_combout\ = !\LFSR8_11D|LFSR\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LFSR8_11D|LFSR\(7),
	combout => \appl_pos_y[3]~3_combout\);

-- Location: FF_X29_Y21_N17
\appl_pos_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \appl_pos_y[3]~3_combout\,
	clrn => \rst~input_o\,
	ena => \appl_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => appl_pos_y(3));

-- Location: LCCOMB_X28_Y21_N4
\Mult0|mult_core|romout[0][3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][3]~3_combout\ = appl_pos_y(3) $ (appl_pos_y(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => appl_pos_y(3),
	datad => appl_pos_y(0),
	combout => \Mult0|mult_core|romout[0][3]~3_combout\);

-- Location: LCCOMB_X28_Y21_N16
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (appl_pos_x(3) & ((\Mult0|mult_core|romout[0][3]~3_combout\ & (!\Add2~5\)) # (!\Mult0|mult_core|romout[0][3]~3_combout\ & ((\Add2~5\) # (GND))))) # (!appl_pos_x(3) & ((\Mult0|mult_core|romout[0][3]~3_combout\ & (\Add2~5\ & VCC)) # 
-- (!\Mult0|mult_core|romout[0][3]~3_combout\ & (!\Add2~5\))))
-- \Add2~7\ = CARRY((appl_pos_x(3) & ((!\Add2~5\) # (!\Mult0|mult_core|romout[0][3]~3_combout\))) # (!appl_pos_x(3) & (!\Mult0|mult_core|romout[0][3]~3_combout\ & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => appl_pos_x(3),
	datab => \Mult0|mult_core|romout[0][3]~3_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X30_Y21_N30
\Mult3|mult_core|romout[0][3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[0][3]~3_combout\ = tail_pos_y(3) $ (tail_pos_y(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tail_pos_y(3),
	datad => tail_pos_y(0),
	combout => \Mult3|mult_core|romout[0][3]~3_combout\);

-- Location: LCCOMB_X30_Y21_N18
\Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Mult3|mult_core|romout[0][3]~3_combout\ & ((tail_pos_x(3) & (\Add7~5\ & VCC)) # (!tail_pos_x(3) & (!\Add7~5\)))) # (!\Mult3|mult_core|romout[0][3]~3_combout\ & ((tail_pos_x(3) & (!\Add7~5\)) # (!tail_pos_x(3) & ((\Add7~5\) # (GND)))))
-- \Add7~7\ = CARRY((\Mult3|mult_core|romout[0][3]~3_combout\ & (!tail_pos_x(3) & !\Add7~5\)) # (!\Mult3|mult_core|romout[0][3]~3_combout\ & ((!\Add7~5\) # (!tail_pos_x(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|romout[0][3]~3_combout\,
	datab => tail_pos_x(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X29_Y22_N26
\vaddr_write~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~13_combout\ = (\vaddr_write[6]~3_combout\ & (((!\vaddr_write[6]~2_combout\)))) # (!\vaddr_write[6]~3_combout\ & ((\vaddr_write[6]~2_combout\ & ((\Add7~6_combout\))) # (!\vaddr_write[6]~2_combout\ & (\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \vaddr_write[6]~3_combout\,
	datac => \vaddr_write[6]~2_combout\,
	datad => \Add7~6_combout\,
	combout => \vaddr_write~13_combout\);

-- Location: LCCOMB_X31_Y22_N18
\Mult1|mult_core|romout[0][3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][3]~3_combout\ = head_pos_y(0) $ (head_pos_y(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => head_pos_y(0),
	datad => head_pos_y(3),
	combout => \Mult1|mult_core|romout[0][3]~3_combout\);

-- Location: LCCOMB_X30_Y22_N6
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (head_pos_x(3) & ((\Mult1|mult_core|romout[0][3]~3_combout\ & (\Add3~5\ & VCC)) # (!\Mult1|mult_core|romout[0][3]~3_combout\ & (!\Add3~5\)))) # (!head_pos_x(3) & ((\Mult1|mult_core|romout[0][3]~3_combout\ & (!\Add3~5\)) # 
-- (!\Mult1|mult_core|romout[0][3]~3_combout\ & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((head_pos_x(3) & (!\Mult1|mult_core|romout[0][3]~3_combout\ & !\Add3~5\)) # (!head_pos_x(3) & ((!\Add3~5\) # (!\Mult1|mult_core|romout[0][3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_x(3),
	datab => \Mult1|mult_core|romout[0][3]~3_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X29_Y22_N14
\vaddr_write~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~14_combout\ = (\vaddr_write[6]~3_combout\ & ((\vaddr_write~13_combout\ & (\Add0~6_combout\)) # (!\vaddr_write~13_combout\ & ((\Add3~6_combout\))))) # (!\vaddr_write[6]~3_combout\ & (((\vaddr_write~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \vaddr_write[6]~3_combout\,
	datac => \vaddr_write~13_combout\,
	datad => \Add3~6_combout\,
	combout => \vaddr_write~14_combout\);

-- Location: FF_X29_Y22_N15
\vaddr_write[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_write~14_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_write[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_write(3));

-- Location: LCCOMB_X28_Y21_N2
\Mult0|mult_core|romout[0][4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][4]~2_combout\ = appl_pos_y(1) $ (((appl_pos_y(3)) # (!appl_pos_y(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => appl_pos_y(0),
	datab => appl_pos_y(3),
	datad => appl_pos_y(1),
	combout => \Mult0|mult_core|romout[0][4]~2_combout\);

-- Location: LCCOMB_X28_Y21_N28
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = \Mult0|mult_core|romout[0][4]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|romout[0][4]~2_combout\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X28_Y21_N18
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\Add2~7\ $ (GND))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X26_Y22_N12
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (vaddr_write(4) & (\Add0~7\ $ (GND))) # (!vaddr_write(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((vaddr_write(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vaddr_write(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X34_Y21_N14
\Mult3|mult_core|romout[0][4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[0][4]~2_combout\ = tail_pos_y(1) $ (((tail_pos_y(3)) # (!tail_pos_y(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(1),
	datab => tail_pos_y(3),
	datad => tail_pos_y(0),
	combout => \Mult3|mult_core|romout[0][4]~2_combout\);

-- Location: LCCOMB_X30_Y21_N0
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (tail_pos_y(4) & (\Mult3|mult_core|romout[0][4]~2_combout\ $ (VCC))) # (!tail_pos_y(4) & (\Mult3|mult_core|romout[0][4]~2_combout\ & VCC))
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((tail_pos_y(4) & \Mult3|mult_core|romout[0][4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(4),
	datab => \Mult3|mult_core|romout[0][4]~2_combout\,
	datad => VCC,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X30_Y21_N20
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = ((tail_pos_x(4) $ (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (!\Add7~7\)))) # (GND)
-- \Add7~9\ = CARRY((tail_pos_x(4) & ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\) # (!\Add7~7\))) # (!tail_pos_x(4) & (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & !\Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_x(4),
	datab => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X31_Y22_N30
\Mult1|mult_core|romout[0][4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][4]~2_combout\ = head_pos_y(1) $ (((head_pos_y(3)) # (!head_pos_y(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_y(3),
	datac => head_pos_y(1),
	datad => head_pos_y(0),
	combout => \Mult1|mult_core|romout[0][4]~2_combout\);

-- Location: LCCOMB_X30_Y22_N18
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Mult1|mult_core|romout[0][4]~2_combout\ & (head_pos_y(4) $ (VCC))) # (!\Mult1|mult_core|romout[0][4]~2_combout\ & (head_pos_y(4) & VCC))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult1|mult_core|romout[0][4]~2_combout\ & head_pos_y(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[0][4]~2_combout\,
	datab => head_pos_y(4),
	datad => VCC,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X30_Y22_N8
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((head_pos_x(4) $ (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (!\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((head_pos_x(4) & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\) # (!\Add3~7\))) # (!head_pos_x(4) & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_x(4),
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X29_Y22_N6
\vaddr_write~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~21_combout\ = (\vaddr_write[6]~2_combout\ & ((\vaddr_write[6]~3_combout\ & ((\Add3~8_combout\))) # (!\vaddr_write[6]~3_combout\ & (\Add7~8_combout\)))) # (!\vaddr_write[6]~2_combout\ & (((\vaddr_write[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_write[6]~2_combout\,
	datab => \Add7~8_combout\,
	datac => \Add3~8_combout\,
	datad => \vaddr_write[6]~3_combout\,
	combout => \vaddr_write~21_combout\);

-- Location: LCCOMB_X29_Y22_N2
\vaddr_write~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~22_combout\ = (\vaddr_write[6]~2_combout\ & (((\vaddr_write~21_combout\)))) # (!\vaddr_write[6]~2_combout\ & ((\vaddr_write~21_combout\ & ((\Add0~8_combout\))) # (!\vaddr_write~21_combout\ & (\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \vaddr_write[6]~2_combout\,
	datac => \Add0~8_combout\,
	datad => \vaddr_write~21_combout\,
	combout => \vaddr_write~22_combout\);

-- Location: FF_X29_Y22_N3
\vaddr_write[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_write~22_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_write[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_write(4));

-- Location: LCCOMB_X29_Y21_N28
\Mult0|mult_core|romout[0][5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][5]~1_combout\ = appl_pos_y(2) $ (((appl_pos_y(0) & (appl_pos_y(3) & appl_pos_y(1))) # (!appl_pos_y(0) & ((!appl_pos_y(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => appl_pos_y(0),
	datab => appl_pos_y(3),
	datac => appl_pos_y(1),
	datad => appl_pos_y(2),
	combout => \Mult0|mult_core|romout[0][5]~1_combout\);

-- Location: LCCOMB_X29_Y21_N20
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = \Mult0|mult_core|romout[0][5]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|romout[0][5]~1_combout\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X28_Y21_N20
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Add2~9\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X34_Y21_N16
\Mult3|mult_core|romout[0][5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[0][5]~1_combout\ = tail_pos_y(2) $ (((tail_pos_y(1) & (tail_pos_y(0) & tail_pos_y(3))) # (!tail_pos_y(1) & (!tail_pos_y(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(1),
	datab => tail_pos_y(0),
	datac => tail_pos_y(3),
	datad => tail_pos_y(2),
	combout => \Mult3|mult_core|romout[0][5]~1_combout\);

-- Location: LCCOMB_X30_Y21_N2
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult3|mult_core|romout[0][5]~1_combout\ & (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult3|mult_core|romout[0][5]~1_combout\ & 
-- ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult3|mult_core|romout[0][5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|romout[0][5]~1_combout\,
	datad => VCC,
	cin => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X30_Y21_N22
\Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Add7~9\)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X27_Y22_N30
\vaddr_write~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~11_combout\ = (\vaddr_write[6]~2_combout\ & (((!\vaddr_write[6]~3_combout\ & \Add7~10_combout\)))) # (!\vaddr_write[6]~2_combout\ & ((\Add2~10_combout\) # ((\vaddr_write[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_write[6]~2_combout\,
	datab => \Add2~10_combout\,
	datac => \vaddr_write[6]~3_combout\,
	datad => \Add7~10_combout\,
	combout => \vaddr_write~11_combout\);

-- Location: LCCOMB_X31_Y22_N16
\Mult1|mult_core|romout[0][5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][5]~1_combout\ = head_pos_y(2) $ (((head_pos_y(1) & (head_pos_y(3) & head_pos_y(0))) # (!head_pos_y(1) & ((!head_pos_y(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_y(3),
	datab => head_pos_y(2),
	datac => head_pos_y(1),
	datad => head_pos_y(0),
	combout => \Mult1|mult_core|romout[0][5]~1_combout\);

-- Location: LCCOMB_X30_Y22_N20
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult1|mult_core|romout[0][5]~1_combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult1|mult_core|romout[0][5]~1_combout\ & 
-- ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult1|mult_core|romout[0][5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|mult_core|romout[0][5]~1_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X30_Y22_N10
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Add3~9\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X26_Y22_N14
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (vaddr_write(5) & (!\Add0~9\)) # (!vaddr_write(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!vaddr_write(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vaddr_write(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X27_Y22_N18
\vaddr_write~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~12_combout\ = (\vaddr_write~11_combout\ & (((\Add0~10_combout\)) # (!\vaddr_write[6]~3_combout\))) # (!\vaddr_write~11_combout\ & (\vaddr_write[6]~3_combout\ & (\Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_write~11_combout\,
	datab => \vaddr_write[6]~3_combout\,
	datac => \Add3~10_combout\,
	datad => \Add0~10_combout\,
	combout => \vaddr_write~12_combout\);

-- Location: FF_X27_Y22_N19
\vaddr_write[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_write~12_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_write[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_write(5));

-- Location: LCCOMB_X26_Y22_N16
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (vaddr_write(6) & (\Add0~11\ $ (GND))) # (!vaddr_write(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((vaddr_write(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vaddr_write(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X29_Y21_N18
\Mult0|mult_core|romout[0][6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~0_combout\ = (appl_pos_y(2) & ((appl_pos_y(3) & ((appl_pos_y(0)) # (!appl_pos_y(1)))) # (!appl_pos_y(3) & (appl_pos_y(1))))) # (!appl_pos_y(2) & (appl_pos_y(3) $ (((!appl_pos_y(1) & appl_pos_y(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => appl_pos_y(2),
	datab => appl_pos_y(3),
	datac => appl_pos_y(1),
	datad => appl_pos_y(0),
	combout => \Mult0|mult_core|romout[0][6]~0_combout\);

-- Location: LCCOMB_X29_Y21_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = \Mult0|mult_core|romout[0][6]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|romout[0][6]~0_combout\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X28_Y21_N22
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (\Add2~11\ $ (GND))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X34_Y21_N22
\Mult3|mult_core|romout[0][6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[0][6]~0_combout\ = (tail_pos_y(1) & ((tail_pos_y(3) & ((tail_pos_y(0)) # (!tail_pos_y(2)))) # (!tail_pos_y(3) & (tail_pos_y(2))))) # (!tail_pos_y(1) & (tail_pos_y(3) $ (((!tail_pos_y(2) & tail_pos_y(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(1),
	datab => tail_pos_y(3),
	datac => tail_pos_y(2),
	datad => tail_pos_y(0),
	combout => \Mult3|mult_core|romout[0][6]~0_combout\);

-- Location: LCCOMB_X30_Y21_N4
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\Mult3|mult_core|romout[0][6]~0_combout\ & (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) # (!\Mult3|mult_core|romout[0][6]~0_combout\ & 
-- (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult3|mult_core|romout[0][6]~0_combout\ & !\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult3|mult_core|romout[0][6]~0_combout\,
	datad => VCC,
	cin => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X30_Y21_N24
\Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\Add7~11\ $ (GND))) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X31_Y22_N14
\Mult1|mult_core|romout[0][6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][6]~0_combout\ = (head_pos_y(2) & ((head_pos_y(3) & ((head_pos_y(0)) # (!head_pos_y(1)))) # (!head_pos_y(3) & (head_pos_y(1))))) # (!head_pos_y(2) & (head_pos_y(3) $ (((!head_pos_y(1) & head_pos_y(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_y(3),
	datab => head_pos_y(2),
	datac => head_pos_y(1),
	datad => head_pos_y(0),
	combout => \Mult1|mult_core|romout[0][6]~0_combout\);

-- Location: LCCOMB_X30_Y22_N22
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\Mult1|mult_core|romout[0][6]~0_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) # (!\Mult1|mult_core|romout[0][6]~0_combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult1|mult_core|romout[0][6]~0_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|mult_core|romout[0][6]~0_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X30_Y22_N12
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\Add3~11\ $ (GND))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X27_Y22_N24
\vaddr_write~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~4_combout\ = (\vaddr_write[6]~2_combout\ & ((\vaddr_write[6]~3_combout\ & ((\Add3~12_combout\))) # (!\vaddr_write[6]~3_combout\ & (\Add7~12_combout\)))) # (!\vaddr_write[6]~2_combout\ & (\vaddr_write[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_write[6]~2_combout\,
	datab => \vaddr_write[6]~3_combout\,
	datac => \Add7~12_combout\,
	datad => \Add3~12_combout\,
	combout => \vaddr_write~4_combout\);

-- Location: LCCOMB_X27_Y22_N12
\vaddr_write~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~5_combout\ = (\vaddr_write[6]~2_combout\ & (((\vaddr_write~4_combout\)))) # (!\vaddr_write[6]~2_combout\ & ((\vaddr_write~4_combout\ & (\Add0~12_combout\)) # (!\vaddr_write~4_combout\ & ((\Add2~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add2~12_combout\,
	datac => \vaddr_write[6]~2_combout\,
	datad => \vaddr_write~4_combout\,
	combout => \vaddr_write~5_combout\);

-- Location: FF_X27_Y22_N13
\vaddr_write[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_write~5_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_write[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_write(6));

-- Location: LCCOMB_X26_Y22_N18
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (vaddr_write(7) & (!\Add0~13\)) # (!vaddr_write(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!vaddr_write(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vaddr_write(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X31_Y22_N24
\Mult1|mult_core|romout[0][7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][7]~4_combout\ = (head_pos_y(3) & (!head_pos_y(2) & ((head_pos_y(1)) # (!head_pos_y(0))))) # (!head_pos_y(3) & (!head_pos_y(1) & ((head_pos_y(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_y(1),
	datab => head_pos_y(3),
	datac => head_pos_y(0),
	datad => head_pos_y(2),
	combout => \Mult1|mult_core|romout[0][7]~4_combout\);

-- Location: LCCOMB_X30_Y22_N24
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (head_pos_y(4) & ((\Mult1|mult_core|romout[0][7]~4_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\Mult1|mult_core|romout[0][7]~4_combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!head_pos_y(4) & ((\Mult1|mult_core|romout[0][7]~4_combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult1|mult_core|romout[0][7]~4_combout\ & 
-- ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((head_pos_y(4) & (!\Mult1|mult_core|romout[0][7]~4_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!head_pos_y(4) & 
-- ((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult1|mult_core|romout[0][7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_y(4),
	datab => \Mult1|mult_core|romout[0][7]~4_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X30_Y22_N14
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Add3~13\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X34_Y21_N30
\Mult3|mult_core|romout[0][7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[0][7]~4_combout\ = (tail_pos_y(3) & (!tail_pos_y(2) & ((tail_pos_y(1)) # (!tail_pos_y(0))))) # (!tail_pos_y(3) & (!tail_pos_y(1) & (tail_pos_y(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(1),
	datab => tail_pos_y(3),
	datac => tail_pos_y(2),
	datad => tail_pos_y(0),
	combout => \Mult3|mult_core|romout[0][7]~4_combout\);

-- Location: LCCOMB_X30_Y21_N6
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (tail_pos_y(4) & ((\Mult3|mult_core|romout[0][7]~4_combout\ & (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\Mult3|mult_core|romout[0][7]~4_combout\ & 
-- (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!tail_pos_y(4) & ((\Mult3|mult_core|romout[0][7]~4_combout\ & (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult3|mult_core|romout[0][7]~4_combout\ & 
-- ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((tail_pos_y(4) & (!\Mult3|mult_core|romout[0][7]~4_combout\ & !\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!tail_pos_y(4) & 
-- ((!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult3|mult_core|romout[0][7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(4),
	datab => \Mult3|mult_core|romout[0][7]~4_combout\,
	datad => VCC,
	cin => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X30_Y21_N26
\Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Add7~13\)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X28_Y21_N0
\Mult0|mult_core|romout[0][7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~4_combout\ = (appl_pos_y(2) & (((!appl_pos_y(1) & !appl_pos_y(3))))) # (!appl_pos_y(2) & (appl_pos_y(3) & ((appl_pos_y(1)) # (!appl_pos_y(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => appl_pos_y(0),
	datab => appl_pos_y(1),
	datac => appl_pos_y(2),
	datad => appl_pos_y(3),
	combout => \Mult0|mult_core|romout[0][7]~4_combout\);

-- Location: LCCOMB_X28_Y21_N30
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = \Mult0|mult_core|romout[0][7]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|romout[0][7]~4_combout\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X28_Y21_N24
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Add2~13\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X29_Y22_N28
\vaddr_write~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~7_combout\ = (\vaddr_write[6]~3_combout\ & (((!\vaddr_write[6]~2_combout\)))) # (!\vaddr_write[6]~3_combout\ & ((\vaddr_write[6]~2_combout\ & (\Add7~14_combout\)) # (!\vaddr_write[6]~2_combout\ & ((\Add2~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datab => \vaddr_write[6]~3_combout\,
	datac => \vaddr_write[6]~2_combout\,
	datad => \Add2~14_combout\,
	combout => \vaddr_write~7_combout\);

-- Location: LCCOMB_X29_Y22_N24
\vaddr_write~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~8_combout\ = (\vaddr_write[6]~3_combout\ & ((\vaddr_write~7_combout\ & (\Add0~14_combout\)) # (!\vaddr_write~7_combout\ & ((\Add3~14_combout\))))) # (!\vaddr_write[6]~3_combout\ & (((\vaddr_write~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \vaddr_write[6]~3_combout\,
	datac => \Add3~14_combout\,
	datad => \vaddr_write~7_combout\,
	combout => \vaddr_write~8_combout\);

-- Location: FF_X29_Y22_N25
\vaddr_write[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_write~8_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_write[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_write(7));

-- Location: LCCOMB_X26_Y22_N20
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = \Add0~15\ $ (!vaddr_write(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => vaddr_write(8),
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X30_Y21_N10
\Mult3|mult_core|romout[0][8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[0][8]~5_combout\ = (tail_pos_y(3) & ((tail_pos_y(2)) # ((!tail_pos_y(1) & tail_pos_y(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(1),
	datab => tail_pos_y(3),
	datac => tail_pos_y(2),
	datad => tail_pos_y(0),
	combout => \Mult3|mult_core|romout[0][8]~5_combout\);

-- Location: LCCOMB_X30_Y21_N8
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = tail_pos_y(4) $ (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\ $ (!\Mult3|mult_core|romout[0][8]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(4),
	datad => \Mult3|mult_core|romout[0][8]~5_combout\,
	cin => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X30_Y21_N28
\Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (!\Add7~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cin => \Add7~15\,
	combout => \Add7~16_combout\);

-- Location: LCCOMB_X32_Y22_N16
\Mult1|mult_core|romout[0][8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][8]~5_combout\ = (head_pos_y(3) & ((head_pos_y(2)) # ((head_pos_y(0) & !head_pos_y(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => head_pos_y(2),
	datab => head_pos_y(3),
	datac => head_pos_y(0),
	datad => head_pos_y(1),
	combout => \Mult1|mult_core|romout[0][8]~5_combout\);

-- Location: LCCOMB_X30_Y22_N26
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = head_pos_y(4) $ (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ $ (!\Mult1|mult_core|romout[0][8]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => head_pos_y(4),
	datad => \Mult1|mult_core|romout[0][8]~5_combout\,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X30_Y22_N16
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = \Add3~15\ $ (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cin => \Add3~15\,
	combout => \Add3~16_combout\);

-- Location: LCCOMB_X30_Y22_N30
\vaddr_write~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~9_combout\ = (\vaddr_write[6]~3_combout\ & (((\Add3~16_combout\)) # (!\vaddr_write[6]~2_combout\))) # (!\vaddr_write[6]~3_combout\ & (\vaddr_write[6]~2_combout\ & (\Add7~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_write[6]~3_combout\,
	datab => \vaddr_write[6]~2_combout\,
	datac => \Add7~16_combout\,
	datad => \Add3~16_combout\,
	combout => \vaddr_write~9_combout\);

-- Location: LCCOMB_X28_Y21_N6
\Mult0|mult_core|romout[0][8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~5_combout\ = (appl_pos_y(3) & ((appl_pos_y(2)) # ((appl_pos_y(0) & !appl_pos_y(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => appl_pos_y(0),
	datab => appl_pos_y(3),
	datac => appl_pos_y(2),
	datad => appl_pos_y(1),
	combout => \Mult0|mult_core|romout[0][8]~5_combout\);

-- Location: LCCOMB_X28_Y21_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = \Mult0|mult_core|romout[0][8]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|romout[0][8]~5_combout\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X28_Y21_N26
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (!\Add2~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cin => \Add2~15\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X30_Y22_N28
\vaddr_write~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~10_combout\ = (\vaddr_write[6]~2_combout\ & (((\vaddr_write~9_combout\)))) # (!\vaddr_write[6]~2_combout\ & ((\vaddr_write~9_combout\ & (\Add0~16_combout\)) # (!\vaddr_write~9_combout\ & ((\Add2~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \vaddr_write[6]~2_combout\,
	datac => \vaddr_write~9_combout\,
	datad => \Add2~16_combout\,
	combout => \vaddr_write~10_combout\);

-- Location: FF_X30_Y22_N29
\vaddr_write[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_write~10_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_write[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_write(8));

-- Location: LCCOMB_X29_Y20_N24
\vaddr_read[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read[8]~0_combout\ = (!\ram_state.ram_render~q\ & !\ram_state.ram_gen_apple~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_state.ram_render~q\,
	datad => \ram_state.ram_gen_apple~q\,
	combout => \vaddr_read[8]~0_combout\);

-- Location: LCCOMB_X29_Y21_N0
\vaddr_read[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read[8]~1_combout\ = (\ram_state.ram_gen_apple~q\) # ((!\ram_state.ram_render~q\ & \ram_state.ram_check~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_state.ram_render~q\,
	datac => \ram_state.ram_gen_apple~q\,
	datad => \ram_state.ram_check~q\,
	combout => \vaddr_read[8]~1_combout\);

-- Location: LCCOMB_X27_Y22_N0
\vaddr_read~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~2_combout\ = (\vaddr_read[8]~0_combout\ & ((\vaddr_read[8]~1_combout\ & ((\Add3~0_combout\))) # (!\vaddr_read[8]~1_combout\ & (\Add7~0_combout\)))) # (!\vaddr_read[8]~0_combout\ & (\vaddr_read[8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_read[8]~0_combout\,
	datab => \vaddr_read[8]~1_combout\,
	datac => \Add7~0_combout\,
	datad => \Add3~0_combout\,
	combout => \vaddr_read~2_combout\);

-- Location: LCCOMB_X29_Y23_N10
\video|Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add5~1_cout\ = CARRY(\video|v_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(0),
	datad => VCC,
	cout => \video|Add5~1_cout\);

-- Location: LCCOMB_X29_Y23_N12
\video|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add5~2_combout\ = (\video|v_cnt\(1) & (\video|Add5~1_cout\ & VCC)) # (!\video|v_cnt\(1) & (!\video|Add5~1_cout\))
-- \video|Add5~3\ = CARRY((!\video|v_cnt\(1) & !\video|Add5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|v_cnt\(1),
	datad => VCC,
	cin => \video|Add5~1_cout\,
	combout => \video|Add5~2_combout\,
	cout => \video|Add5~3\);

-- Location: LCCOMB_X29_Y23_N14
\video|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add5~4_combout\ = (\video|v_cnt\(2) & (\video|Add5~3\ $ (GND))) # (!\video|v_cnt\(2) & (!\video|Add5~3\ & VCC))
-- \video|Add5~5\ = CARRY((\video|v_cnt\(2) & !\video|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(2),
	datad => VCC,
	cin => \video|Add5~3\,
	combout => \video|Add5~4_combout\,
	cout => \video|Add5~5\);

-- Location: LCCOMB_X29_Y23_N16
\video|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add5~6_combout\ = (\video|v_cnt\(3) & (\video|Add5~5\ & VCC)) # (!\video|v_cnt\(3) & (!\video|Add5~5\))
-- \video|Add5~7\ = CARRY((!\video|v_cnt\(3) & !\video|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|v_cnt\(3),
	datad => VCC,
	cin => \video|Add5~5\,
	combout => \video|Add5~6_combout\,
	cout => \video|Add5~7\);

-- Location: LCCOMB_X29_Y23_N18
\video|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add5~8_combout\ = (\video|v_cnt\(4) & ((GND) # (!\video|Add5~7\))) # (!\video|v_cnt\(4) & (\video|Add5~7\ $ (GND)))
-- \video|Add5~9\ = CARRY((\video|v_cnt\(4)) # (!\video|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|v_cnt\(4),
	datad => VCC,
	cin => \video|Add5~7\,
	combout => \video|Add5~8_combout\,
	cout => \video|Add5~9\);

-- Location: LCCOMB_X29_Y23_N20
\video|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add5~10_combout\ = (\video|v_cnt\(5) & (!\video|Add5~9\)) # (!\video|v_cnt\(5) & ((\video|Add5~9\) # (GND)))
-- \video|Add5~11\ = CARRY((!\video|Add5~9\) # (!\video|v_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|v_cnt\(5),
	datad => VCC,
	cin => \video|Add5~9\,
	combout => \video|Add5~10_combout\,
	cout => \video|Add5~11\);

-- Location: LCCOMB_X28_Y23_N6
\video|Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add6~1_cout\ = CARRY((\video|Add5~2_combout\ & \video|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add5~2_combout\,
	datab => \video|Add5~4_combout\,
	datad => VCC,
	cout => \video|Add6~1_cout\);

-- Location: LCCOMB_X28_Y23_N8
\video|Add6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add6~3_cout\ = CARRY((!\video|Add5~6_combout\ & !\video|Add6~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|Add5~6_combout\,
	datad => VCC,
	cin => \video|Add6~1_cout\,
	cout => \video|Add6~3_cout\);

-- Location: LCCOMB_X28_Y23_N10
\video|Add6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add6~5_cout\ = CARRY((\video|Add5~8_combout\) # (!\video|Add6~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|Add5~8_combout\,
	datad => VCC,
	cin => \video|Add6~3_cout\,
	cout => \video|Add6~5_cout\);

-- Location: LCCOMB_X28_Y23_N12
\video|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add6~6_combout\ = (\video|Add5~10_combout\ & (\video|Add6~5_cout\ & VCC)) # (!\video|Add5~10_combout\ & (!\video|Add6~5_cout\))
-- \video|Add6~7\ = CARRY((!\video|Add5~10_combout\ & !\video|Add6~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add5~10_combout\,
	datad => VCC,
	cin => \video|Add6~5_cout\,
	combout => \video|Add6~6_combout\,
	cout => \video|Add6~7\);

-- Location: LCCOMB_X28_Y20_N18
\video|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add2~0_combout\ = \video|h_cnt\(4) $ (VCC)
-- \video|Add2~1\ = CARRY(\video|h_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(4),
	datad => VCC,
	combout => \video|Add2~0_combout\,
	cout => \video|Add2~1\);

-- Location: LCCOMB_X28_Y20_N20
\video|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add2~2_combout\ = (\video|h_cnt\(5) & (!\video|Add2~1\)) # (!\video|h_cnt\(5) & ((\video|Add2~1\) # (GND)))
-- \video|Add2~3\ = CARRY((!\video|Add2~1\) # (!\video|h_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|h_cnt\(5),
	datad => VCC,
	cin => \video|Add2~1\,
	combout => \video|Add2~2_combout\,
	cout => \video|Add2~3\);

-- Location: LCCOMB_X28_Y20_N2
\video|Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add4~1_cout\ = CARRY((\video|h_cnt\(2) & \video|h_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(2),
	datab => \video|h_cnt\(1),
	datad => VCC,
	cout => \video|Add4~1_cout\);

-- Location: LCCOMB_X28_Y20_N4
\video|Add4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add4~3_cout\ = CARRY((!\video|Add4~1_cout\) # (!\video|h_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|h_cnt\(3),
	datad => VCC,
	cin => \video|Add4~1_cout\,
	cout => \video|Add4~3_cout\);

-- Location: LCCOMB_X28_Y20_N6
\video|Add4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add4~5_cout\ = CARRY((\video|Add2~0_combout\ & !\video|Add4~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|Add2~0_combout\,
	datad => VCC,
	cin => \video|Add4~3_cout\,
	cout => \video|Add4~5_cout\);

-- Location: LCCOMB_X28_Y20_N8
\video|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add4~6_combout\ = (\video|Add2~2_combout\ & (!\video|Add4~5_cout\)) # (!\video|Add2~2_combout\ & ((\video|Add4~5_cout\) # (GND)))
-- \video|Add4~7\ = CARRY((!\video|Add4~5_cout\) # (!\video|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|Add2~2_combout\,
	datad => VCC,
	cin => \video|Add4~5_cout\,
	combout => \video|Add4~6_combout\,
	cout => \video|Add4~7\);

-- Location: LCCOMB_X28_Y22_N2
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\video|Add6~6_combout\ & (\video|Add4~6_combout\ $ (VCC))) # (!\video|Add6~6_combout\ & (\video|Add4~6_combout\ & VCC))
-- \Add4~1\ = CARRY((\video|Add6~6_combout\ & \video|Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add6~6_combout\,
	datab => \video|Add4~6_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X27_Y22_N8
\vaddr_read~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~3_combout\ = (\vaddr_read[8]~0_combout\ & (\vaddr_read~2_combout\)) # (!\vaddr_read[8]~0_combout\ & ((\vaddr_read~2_combout\ & (\Add2~0_combout\)) # (!\vaddr_read~2_combout\ & ((\Add4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_read[8]~0_combout\,
	datab => \vaddr_read~2_combout\,
	datac => \Add2~0_combout\,
	datad => \Add4~0_combout\,
	combout => \vaddr_read~3_combout\);

-- Location: LCCOMB_X29_Y20_N30
\vaddr_read[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read[0]~4_combout\ = (\ram_state.ram_clr~q\ & ((\ram_state.ram_check~q\) # ((\ram_state.ram_clr_tail~q\) # (!\vaddr_read[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_check~q\,
	datab => \vaddr_read[8]~0_combout\,
	datac => \ram_state.ram_clr_tail~q\,
	datad => \ram_state.ram_clr~q\,
	combout => \vaddr_read[0]~4_combout\);

-- Location: FF_X27_Y22_N9
\vaddr_read[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_read~3_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_read[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_read(0));

-- Location: LCCOMB_X28_Y20_N22
\video|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add2~4_combout\ = (\video|h_cnt\(6) & ((GND) # (!\video|Add2~3\))) # (!\video|h_cnt\(6) & (\video|Add2~3\ $ (GND)))
-- \video|Add2~5\ = CARRY((\video|h_cnt\(6)) # (!\video|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|h_cnt\(6),
	datad => VCC,
	cin => \video|Add2~3\,
	combout => \video|Add2~4_combout\,
	cout => \video|Add2~5\);

-- Location: LCCOMB_X28_Y20_N10
\video|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add4~8_combout\ = (\video|Add2~4_combout\ & (\video|Add4~7\ $ (GND))) # (!\video|Add2~4_combout\ & (!\video|Add4~7\ & VCC))
-- \video|Add4~9\ = CARRY((\video|Add2~4_combout\ & !\video|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add2~4_combout\,
	datad => VCC,
	cin => \video|Add4~7\,
	combout => \video|Add4~8_combout\,
	cout => \video|Add4~9\);

-- Location: LCCOMB_X29_Y23_N22
\video|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add5~12_combout\ = (\video|v_cnt\(6) & ((GND) # (!\video|Add5~11\))) # (!\video|v_cnt\(6) & (\video|Add5~11\ $ (GND)))
-- \video|Add5~13\ = CARRY((\video|v_cnt\(6)) # (!\video|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|v_cnt\(6),
	datad => VCC,
	cin => \video|Add5~11\,
	combout => \video|Add5~12_combout\,
	cout => \video|Add5~13\);

-- Location: LCCOMB_X28_Y23_N14
\video|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add6~8_combout\ = (\video|Add5~12_combout\ & ((GND) # (!\video|Add6~7\))) # (!\video|Add5~12_combout\ & (\video|Add6~7\ $ (GND)))
-- \video|Add6~9\ = CARRY((\video|Add5~12_combout\) # (!\video|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|Add5~12_combout\,
	datad => VCC,
	cin => \video|Add6~7\,
	combout => \video|Add6~8_combout\,
	cout => \video|Add6~9\);

-- Location: LCCOMB_X28_Y22_N4
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\video|Add4~8_combout\ & ((\video|Add6~8_combout\ & (\Add4~1\ & VCC)) # (!\video|Add6~8_combout\ & (!\Add4~1\)))) # (!\video|Add4~8_combout\ & ((\video|Add6~8_combout\ & (!\Add4~1\)) # (!\video|Add6~8_combout\ & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY((\video|Add4~8_combout\ & (!\video|Add6~8_combout\ & !\Add4~1\)) # (!\video|Add4~8_combout\ & ((!\Add4~1\) # (!\video|Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add4~8_combout\,
	datab => \video|Add6~8_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X29_Y22_N16
\vaddr_read~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~5_combout\ = (\vaddr_read[8]~1_combout\ & (((!\vaddr_read[8]~0_combout\)))) # (!\vaddr_read[8]~1_combout\ & ((\vaddr_read[8]~0_combout\ & (\Add7~2_combout\)) # (!\vaddr_read[8]~0_combout\ & ((\Add4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \vaddr_read[8]~1_combout\,
	datac => \Add4~2_combout\,
	datad => \vaddr_read[8]~0_combout\,
	combout => \vaddr_read~5_combout\);

-- Location: LCCOMB_X29_Y22_N4
\vaddr_read~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~6_combout\ = (\vaddr_read[8]~1_combout\ & ((\vaddr_read~5_combout\ & ((\Add2~2_combout\))) # (!\vaddr_read~5_combout\ & (\Add3~2_combout\)))) # (!\vaddr_read[8]~1_combout\ & (((\vaddr_read~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \vaddr_read[8]~1_combout\,
	datac => \Add2~2_combout\,
	datad => \vaddr_read~5_combout\,
	combout => \vaddr_read~6_combout\);

-- Location: FF_X29_Y22_N5
\vaddr_read[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_read~6_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_read[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_read(1));

-- Location: LCCOMB_X27_Y22_N22
\vaddr_read~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~7_combout\ = (\vaddr_read[8]~0_combout\ & ((\vaddr_read[8]~1_combout\ & ((\Add3~4_combout\))) # (!\vaddr_read[8]~1_combout\ & (\Add7~4_combout\)))) # (!\vaddr_read[8]~0_combout\ & (\vaddr_read[8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_read[8]~0_combout\,
	datab => \vaddr_read[8]~1_combout\,
	datac => \Add7~4_combout\,
	datad => \Add3~4_combout\,
	combout => \vaddr_read~7_combout\);

-- Location: LCCOMB_X28_Y20_N24
\video|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add2~6_combout\ = (\video|h_cnt\(7) & (!\video|Add2~5\)) # (!\video|h_cnt\(7) & ((\video|Add2~5\) # (GND)))
-- \video|Add2~7\ = CARRY((!\video|Add2~5\) # (!\video|h_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|h_cnt\(7),
	datad => VCC,
	cin => \video|Add2~5\,
	combout => \video|Add2~6_combout\,
	cout => \video|Add2~7\);

-- Location: LCCOMB_X28_Y20_N12
\video|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add4~10_combout\ = (\video|Add2~6_combout\ & (!\video|Add4~9\)) # (!\video|Add2~6_combout\ & ((\video|Add4~9\) # (GND)))
-- \video|Add4~11\ = CARRY((!\video|Add4~9\) # (!\video|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|Add2~6_combout\,
	datad => VCC,
	cin => \video|Add4~9\,
	combout => \video|Add4~10_combout\,
	cout => \video|Add4~11\);

-- Location: LCCOMB_X29_Y23_N24
\video|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add5~14_combout\ = (\video|v_cnt\(7) & (\video|Add5~13\ & VCC)) # (!\video|v_cnt\(7) & (!\video|Add5~13\))
-- \video|Add5~15\ = CARRY((!\video|v_cnt\(7) & !\video|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|v_cnt\(7),
	datad => VCC,
	cin => \video|Add5~13\,
	combout => \video|Add5~14_combout\,
	cout => \video|Add5~15\);

-- Location: LCCOMB_X28_Y23_N16
\video|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add6~10_combout\ = (\video|Add5~14_combout\ & (\video|Add6~9\ & VCC)) # (!\video|Add5~14_combout\ & (!\video|Add6~9\))
-- \video|Add6~11\ = CARRY((!\video|Add5~14_combout\ & !\video|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|Add5~14_combout\,
	datad => VCC,
	cin => \video|Add6~9\,
	combout => \video|Add6~10_combout\,
	cout => \video|Add6~11\);

-- Location: LCCOMB_X28_Y22_N6
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\video|Add4~10_combout\ $ (\video|Add6~10_combout\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\video|Add4~10_combout\ & ((\video|Add6~10_combout\) # (!\Add4~3\))) # (!\video|Add4~10_combout\ & (\video|Add6~10_combout\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add4~10_combout\,
	datab => \video|Add6~10_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X27_Y22_N26
\vaddr_read~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~8_combout\ = (\vaddr_read[8]~0_combout\ & (((\vaddr_read~7_combout\)))) # (!\vaddr_read[8]~0_combout\ & ((\vaddr_read~7_combout\ & (\Add2~4_combout\)) # (!\vaddr_read~7_combout\ & ((\Add4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \vaddr_read[8]~0_combout\,
	datac => \vaddr_read~7_combout\,
	datad => \Add4~4_combout\,
	combout => \vaddr_read~8_combout\);

-- Location: FF_X27_Y22_N27
\vaddr_read[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_read~8_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_read[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_read(2));

-- Location: LCCOMB_X28_Y20_N26
\video|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add2~8_combout\ = (\video|h_cnt\(8) & ((GND) # (!\video|Add2~7\))) # (!\video|h_cnt\(8) & (\video|Add2~7\ $ (GND)))
-- \video|Add2~9\ = CARRY((\video|h_cnt\(8)) # (!\video|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|h_cnt\(8),
	datad => VCC,
	cin => \video|Add2~7\,
	combout => \video|Add2~8_combout\,
	cout => \video|Add2~9\);

-- Location: LCCOMB_X28_Y20_N14
\video|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add4~12_combout\ = (\video|Add2~8_combout\ & (\video|Add4~11\ $ (GND))) # (!\video|Add2~8_combout\ & (!\video|Add4~11\ & VCC))
-- \video|Add4~13\ = CARRY((\video|Add2~8_combout\ & !\video|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add2~8_combout\,
	datad => VCC,
	cin => \video|Add4~11\,
	combout => \video|Add4~12_combout\,
	cout => \video|Add4~13\);

-- Location: LCCOMB_X29_Y23_N26
\video|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add5~16_combout\ = (\video|v_cnt\(8) & ((GND) # (!\video|Add5~15\))) # (!\video|v_cnt\(8) & (\video|Add5~15\ $ (GND)))
-- \video|Add5~17\ = CARRY((\video|v_cnt\(8)) # (!\video|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|v_cnt\(8),
	datad => VCC,
	cin => \video|Add5~15\,
	combout => \video|Add5~16_combout\,
	cout => \video|Add5~17\);

-- Location: LCCOMB_X28_Y23_N18
\video|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add6~12_combout\ = (\video|Add5~16_combout\ & ((GND) # (!\video|Add6~11\))) # (!\video|Add5~16_combout\ & (\video|Add6~11\ $ (GND)))
-- \video|Add6~13\ = CARRY((\video|Add5~16_combout\) # (!\video|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add5~16_combout\,
	datad => VCC,
	cin => \video|Add6~11\,
	combout => \video|Add6~12_combout\,
	cout => \video|Add6~13\);

-- Location: LCCOMB_X28_Y23_N24
\Mult2|mult_core|romout[0][3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|romout[0][3]~0_combout\ = \video|Add6~6_combout\ $ (\video|Add6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \video|Add6~6_combout\,
	datad => \video|Add6~12_combout\,
	combout => \Mult2|mult_core|romout[0][3]~0_combout\);

-- Location: LCCOMB_X28_Y22_N8
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\video|Add4~12_combout\ & ((\Mult2|mult_core|romout[0][3]~0_combout\ & (\Add4~5\ & VCC)) # (!\Mult2|mult_core|romout[0][3]~0_combout\ & (!\Add4~5\)))) # (!\video|Add4~12_combout\ & ((\Mult2|mult_core|romout[0][3]~0_combout\ & 
-- (!\Add4~5\)) # (!\Mult2|mult_core|romout[0][3]~0_combout\ & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY((\video|Add4~12_combout\ & (!\Mult2|mult_core|romout[0][3]~0_combout\ & !\Add4~5\)) # (!\video|Add4~12_combout\ & ((!\Add4~5\) # (!\Mult2|mult_core|romout[0][3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add4~12_combout\,
	datab => \Mult2|mult_core|romout[0][3]~0_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X29_Y22_N30
\vaddr_read~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~9_combout\ = (\vaddr_read[8]~1_combout\ & (((!\vaddr_read[8]~0_combout\)))) # (!\vaddr_read[8]~1_combout\ & ((\vaddr_read[8]~0_combout\ & ((\Add7~6_combout\))) # (!\vaddr_read[8]~0_combout\ & (\Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datab => \vaddr_read[8]~1_combout\,
	datac => \vaddr_read[8]~0_combout\,
	datad => \Add7~6_combout\,
	combout => \vaddr_read~9_combout\);

-- Location: LCCOMB_X29_Y22_N22
\vaddr_read~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~10_combout\ = (\vaddr_read[8]~1_combout\ & ((\vaddr_read~9_combout\ & (\Add2~6_combout\)) # (!\vaddr_read~9_combout\ & ((\Add3~6_combout\))))) # (!\vaddr_read[8]~1_combout\ & (((\vaddr_read~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \vaddr_read[8]~1_combout\,
	datac => \vaddr_read~9_combout\,
	datad => \Add3~6_combout\,
	combout => \vaddr_read~10_combout\);

-- Location: FF_X29_Y22_N23
\vaddr_read[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_read~10_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_read[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_read(3));

-- Location: LCCOMB_X29_Y22_N8
\vaddr_read~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~11_combout\ = (\vaddr_read[8]~0_combout\ & ((\vaddr_read[8]~1_combout\ & ((\Add3~8_combout\))) # (!\vaddr_read[8]~1_combout\ & (\Add7~8_combout\)))) # (!\vaddr_read[8]~0_combout\ & (((\vaddr_read[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_read[8]~0_combout\,
	datab => \Add7~8_combout\,
	datac => \Add3~8_combout\,
	datad => \vaddr_read[8]~1_combout\,
	combout => \vaddr_read~11_combout\);

-- Location: LCCOMB_X28_Y20_N28
\video|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add2~10_combout\ = \video|Add2~9\ $ (!\video|h_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \video|h_cnt\(9),
	cin => \video|Add2~9\,
	combout => \video|Add2~10_combout\);

-- Location: LCCOMB_X28_Y20_N16
\video|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add4~14_combout\ = \video|Add4~13\ $ (\video|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \video|Add2~10_combout\,
	cin => \video|Add4~13\,
	combout => \video|Add4~14_combout\);

-- Location: LCCOMB_X28_Y23_N30
\Mult2|mult_core|romout[0][4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|romout[0][4]~1_combout\ = \video|Add6~8_combout\ $ (((\video|Add6~6_combout\ & !\video|Add6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add6~6_combout\,
	datac => \video|Add6~8_combout\,
	datad => \video|Add6~12_combout\,
	combout => \Mult2|mult_core|romout[0][4]~1_combout\);

-- Location: LCCOMB_X29_Y23_N28
\video|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add5~18_combout\ = \video|Add5~17\ $ (!\video|v_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \video|v_cnt\(9),
	cin => \video|Add5~17\,
	combout => \video|Add5~18_combout\);

-- Location: LCCOMB_X28_Y23_N20
\video|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|Add6~14_combout\ = \video|Add6~13\ $ (!\video|Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \video|Add5~18_combout\,
	cin => \video|Add6~13\,
	combout => \video|Add6~14_combout\);

-- Location: LCCOMB_X28_Y22_N20
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Mult2|mult_core|romout[0][4]~1_combout\ & (\video|Add6~14_combout\ $ (VCC))) # (!\Mult2|mult_core|romout[0][4]~1_combout\ & (\video|Add6~14_combout\ & VCC))
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult2|mult_core|romout[0][4]~1_combout\ & \video|Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|romout[0][4]~1_combout\,
	datab => \video|Add6~14_combout\,
	datad => VCC,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X28_Y22_N10
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((\video|Add4~14_combout\ $ (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((\video|Add4~14_combout\ & ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\) # (!\Add4~7\))) # (!\video|Add4~14_combout\ & (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add4~14_combout\,
	datab => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X29_Y22_N20
\vaddr_read~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~12_combout\ = (\vaddr_read[8]~0_combout\ & (((\vaddr_read~11_combout\)))) # (!\vaddr_read[8]~0_combout\ & ((\vaddr_read~11_combout\ & (\Add2~8_combout\)) # (!\vaddr_read~11_combout\ & ((\Add4~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \vaddr_read[8]~0_combout\,
	datac => \vaddr_read~11_combout\,
	datad => \Add4~8_combout\,
	combout => \vaddr_read~12_combout\);

-- Location: FF_X29_Y22_N21
\vaddr_read[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_read~12_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_read[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_read(4));

-- Location: LCCOMB_X28_Y23_N0
\Mult2|mult_core|romout[0][5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|romout[0][5]~2_combout\ = \video|Add6~10_combout\ $ (((\video|Add6~6_combout\ & (\video|Add6~12_combout\ & !\video|Add6~8_combout\)) # (!\video|Add6~6_combout\ & ((\video|Add6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add6~6_combout\,
	datab => \video|Add6~12_combout\,
	datac => \video|Add6~8_combout\,
	datad => \video|Add6~10_combout\,
	combout => \Mult2|mult_core|romout[0][5]~2_combout\);

-- Location: LCCOMB_X28_Y22_N22
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult2|mult_core|romout[0][5]~2_combout\ & (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult2|mult_core|romout[0][5]~2_combout\ & 
-- ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult2|mult_core|romout[0][5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|mult_core|romout[0][5]~2_combout\,
	datad => VCC,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X28_Y22_N12
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Add4~9\)) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X27_Y22_N20
\vaddr_read~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~13_combout\ = (\vaddr_read[8]~0_combout\ & (!\vaddr_read[8]~1_combout\ & ((\Add7~10_combout\)))) # (!\vaddr_read[8]~0_combout\ & ((\vaddr_read[8]~1_combout\) # ((\Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_read[8]~0_combout\,
	datab => \vaddr_read[8]~1_combout\,
	datac => \Add4~10_combout\,
	datad => \Add7~10_combout\,
	combout => \vaddr_read~13_combout\);

-- Location: LCCOMB_X27_Y22_N4
\vaddr_read~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~14_combout\ = (\vaddr_read[8]~1_combout\ & ((\vaddr_read~13_combout\ & (\Add2~10_combout\)) # (!\vaddr_read~13_combout\ & ((\Add3~10_combout\))))) # (!\vaddr_read[8]~1_combout\ & (((\vaddr_read~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_read[8]~1_combout\,
	datab => \Add2~10_combout\,
	datac => \Add3~10_combout\,
	datad => \vaddr_read~13_combout\,
	combout => \vaddr_read~14_combout\);

-- Location: FF_X27_Y22_N5
\vaddr_read[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_read~14_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_read[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_read(5));

-- Location: LCCOMB_X28_Y23_N2
\Mult2|mult_core|romout[0][6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|romout[0][6]~3_combout\ = (\video|Add6~10_combout\ & ((\video|Add6~8_combout\ & ((\video|Add6~12_combout\))) # (!\video|Add6~8_combout\ & ((\video|Add6~6_combout\) # (!\video|Add6~12_combout\))))) # (!\video|Add6~10_combout\ & 
-- (\video|Add6~12_combout\ $ (((\video|Add6~6_combout\ & \video|Add6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add6~6_combout\,
	datab => \video|Add6~10_combout\,
	datac => \video|Add6~8_combout\,
	datad => \video|Add6~12_combout\,
	combout => \Mult2|mult_core|romout[0][6]~3_combout\);

-- Location: LCCOMB_X28_Y22_N24
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\Mult2|mult_core|romout[0][6]~3_combout\ & (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) # (!\Mult2|mult_core|romout[0][6]~3_combout\ & 
-- (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult2|mult_core|romout[0][6]~3_combout\ & !\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|romout[0][6]~3_combout\,
	datad => VCC,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X28_Y22_N14
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\Add4~11\ $ (GND))) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X27_Y22_N10
\vaddr_read~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~15_combout\ = (\vaddr_read[8]~0_combout\ & ((\vaddr_read[8]~1_combout\ & ((\Add3~12_combout\))) # (!\vaddr_read[8]~1_combout\ & (\Add7~12_combout\)))) # (!\vaddr_read[8]~0_combout\ & (\vaddr_read[8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_read[8]~0_combout\,
	datab => \vaddr_read[8]~1_combout\,
	datac => \Add7~12_combout\,
	datad => \Add3~12_combout\,
	combout => \vaddr_read~15_combout\);

-- Location: LCCOMB_X27_Y22_N2
\vaddr_read~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~16_combout\ = (\vaddr_read[8]~0_combout\ & (((\vaddr_read~15_combout\)))) # (!\vaddr_read[8]~0_combout\ & ((\vaddr_read~15_combout\ & (\Add2~12_combout\)) # (!\vaddr_read~15_combout\ & ((\Add4~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_read[8]~0_combout\,
	datab => \Add2~12_combout\,
	datac => \Add4~12_combout\,
	datad => \vaddr_read~15_combout\,
	combout => \vaddr_read~16_combout\);

-- Location: FF_X27_Y22_N3
\vaddr_read[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_read~16_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_read[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_read(6));

-- Location: LCCOMB_X28_Y23_N28
\Mult2|mult_core|romout[0][7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|romout[0][7]~4_combout\ = (\video|Add6~10_combout\ & (\video|Add6~8_combout\ & ((!\video|Add6~12_combout\)))) # (!\video|Add6~10_combout\ & (\video|Add6~12_combout\ & ((!\video|Add6~6_combout\) # (!\video|Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add6~8_combout\,
	datab => \video|Add6~10_combout\,
	datac => \video|Add6~6_combout\,
	datad => \video|Add6~12_combout\,
	combout => \Mult2|mult_core|romout[0][7]~4_combout\);

-- Location: LCCOMB_X28_Y22_N26
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult2|mult_core|romout[0][7]~4_combout\ & ((\video|Add6~14_combout\ & (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\video|Add6~14_combout\ & 
-- (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult2|mult_core|romout[0][7]~4_combout\ & ((\video|Add6~14_combout\ & (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\video|Add6~14_combout\ & 
-- ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult2|mult_core|romout[0][7]~4_combout\ & (!\video|Add6~14_combout\ & !\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult2|mult_core|romout[0][7]~4_combout\ & 
-- ((!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\video|Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|romout[0][7]~4_combout\,
	datab => \video|Add6~14_combout\,
	datad => VCC,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X28_Y22_N16
\Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Add4~13\)) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X29_Y22_N10
\vaddr_read~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~17_combout\ = (\vaddr_read[8]~0_combout\ & (\vaddr_read[8]~1_combout\ & (\Add3~14_combout\))) # (!\vaddr_read[8]~0_combout\ & (((\Add2~14_combout\)) # (!\vaddr_read[8]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_read[8]~0_combout\,
	datab => \vaddr_read[8]~1_combout\,
	datac => \Add3~14_combout\,
	datad => \Add2~14_combout\,
	combout => \vaddr_read~17_combout\);

-- Location: LCCOMB_X29_Y22_N18
\vaddr_read~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~18_combout\ = (\vaddr_read[8]~1_combout\ & (((\vaddr_read~17_combout\)))) # (!\vaddr_read[8]~1_combout\ & ((\vaddr_read~17_combout\ & ((\Add4~14_combout\))) # (!\vaddr_read~17_combout\ & (\Add7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datab => \vaddr_read[8]~1_combout\,
	datac => \Add4~14_combout\,
	datad => \vaddr_read~17_combout\,
	combout => \vaddr_read~18_combout\);

-- Location: FF_X29_Y22_N19
\vaddr_read[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_read~18_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_read[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_read(7));

-- Location: LCCOMB_X28_Y22_N30
\vaddr_read~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~19_combout\ = (\vaddr_read[8]~1_combout\ & (((\Add3~16_combout\)) # (!\vaddr_read[8]~0_combout\))) # (!\vaddr_read[8]~1_combout\ & (\vaddr_read[8]~0_combout\ & (\Add7~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_read[8]~1_combout\,
	datab => \vaddr_read[8]~0_combout\,
	datac => \Add7~16_combout\,
	datad => \Add3~16_combout\,
	combout => \vaddr_read~19_combout\);

-- Location: LCCOMB_X28_Y23_N22
\Mult2|mult_core|romout[0][8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|romout[0][8]~5_combout\ = (\video|Add6~12_combout\ & ((\video|Add6~10_combout\) # ((\video|Add6~8_combout\ & \video|Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|Add6~8_combout\,
	datab => \video|Add6~6_combout\,
	datac => \video|Add6~10_combout\,
	datad => \video|Add6~12_combout\,
	combout => \Mult2|mult_core|romout[0][8]~5_combout\);

-- Location: LCCOMB_X28_Y22_N28
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = \video|Add6~14_combout\ $ (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\ $ (!\Mult2|mult_core|romout[0][8]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \video|Add6~14_combout\,
	datad => \Mult2|mult_core|romout[0][8]~5_combout\,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X28_Y22_N18
\Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = \Add4~15\ $ (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cin => \Add4~15\,
	combout => \Add4~16_combout\);

-- Location: LCCOMB_X28_Y22_N0
\vaddr_read~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_read~20_combout\ = (\vaddr_read[8]~0_combout\ & (((\vaddr_read~19_combout\)))) # (!\vaddr_read[8]~0_combout\ & ((\vaddr_read~19_combout\ & (\Add2~16_combout\)) # (!\vaddr_read~19_combout\ & ((\Add4~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \vaddr_read[8]~0_combout\,
	datac => \vaddr_read~19_combout\,
	datad => \Add4~16_combout\,
	combout => \vaddr_read~20_combout\);

-- Location: FF_X28_Y22_N1
\vaddr_read[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_read~20_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_read[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_read(8));

-- Location: LCCOMB_X29_Y20_N26
\vdata[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vdata[0]~0_combout\ = (\ram_state.ram_clr~q\ & (!\ram_state.ram_gen_apple~q\ & ((\tail_pos_x[4]~5_combout\) # (\ram_state.ram_gen_apple~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tail_pos_x[4]~5_combout\,
	datab => \ram_state.ram_clr~q\,
	datac => \ram_state.ram_gen_apple~0_combout\,
	datad => \ram_state.ram_gen_apple~q\,
	combout => \vdata[0]~0_combout\);

-- Location: FF_X29_Y20_N25
\vdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_state.ram_set_apple~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \vdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vdata(1));

-- Location: LCCOMB_X32_Y22_N12
\vdata~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vdata~1_combout\ = (\ram_state.ram_set_head~q\ & head_dir(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_set_head~q\,
	datac => head_dir(0),
	combout => \vdata~1_combout\);

-- Location: LCCOMB_X32_Y22_N0
\vdata[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vdata[2]~2_combout\ = (\vaddr_write[6]~2_combout\ & (!\ram_state.ram_gen_apple~q\ & ((\ram_state.ram_set_head~q\) # (\tail_pos_x[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_write[6]~2_combout\,
	datab => \ram_state.ram_gen_apple~q\,
	datac => \ram_state.ram_set_head~q\,
	datad => \tail_pos_x[4]~5_combout\,
	combout => \vdata[2]~2_combout\);

-- Location: FF_X32_Y22_N13
\vdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vdata~1_combout\,
	clrn => \rst~input_o\,
	ena => \vdata[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vdata(2));

-- Location: LCCOMB_X32_Y22_N10
\vdata~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vdata~3_combout\ = (\ram_state.ram_set_head~q\ & head_dir(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_state.ram_set_head~q\,
	datad => head_dir(1),
	combout => \vdata~3_combout\);

-- Location: FF_X32_Y22_N11
\vdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vdata~3_combout\,
	clrn => \rst~input_o\,
	ena => \vdata[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vdata(3));

-- Location: M9K_X33_Y22_N0
\vram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vram:vram|altsyncram:altsyncram_component|altsyncram_5en1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_vwren~q\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \ALT_INV_vwren~q\,
	portadatain => \vram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \vram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \vram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \vram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X31_Y21_N20
\tail_pos_x[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_pos_x[4]~16_combout\ = (!\vram|altsyncram_component|auto_generated|q_b\(2) & (tail_pos_x(4) & tail_pos_x(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vram|altsyncram_component|auto_generated|q_b\(2),
	datab => tail_pos_x(4),
	datad => tail_pos_x(3),
	combout => \tail_pos_x[4]~16_combout\);

-- Location: LCCOMB_X32_Y21_N30
\tail_pos_x[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_pos_x[4]~17_combout\ = (!\vram|altsyncram_component|auto_generated|q_b\(3) & \tail_pos_x[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vram|altsyncram_component|auto_generated|q_b\(3),
	datad => \tail_pos_x[4]~5_combout\,
	combout => \tail_pos_x[4]~17_combout\);

-- Location: FF_X31_Y21_N15
\tail_pos_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tail_pos_x[2]~10_combout\,
	asdata => \Mux7~0_combout\,
	clrn => \rst~input_o\,
	sclr => \tail_pos_x[4]~16_combout\,
	sload => \vram|altsyncram_component|auto_generated|q_b\(2),
	ena => \tail_pos_x[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_pos_x(2));

-- Location: LCCOMB_X31_Y21_N16
\tail_pos_x[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_pos_x[3]~12_combout\ = (tail_pos_x(3) & (!\tail_pos_x[2]~11\)) # (!tail_pos_x(3) & ((\tail_pos_x[2]~11\) # (GND)))
-- \tail_pos_x[3]~13\ = CARRY((!\tail_pos_x[2]~11\) # (!tail_pos_x(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_pos_x(3),
	datad => VCC,
	cin => \tail_pos_x[2]~11\,
	combout => \tail_pos_x[3]~12_combout\,
	cout => \tail_pos_x[3]~13\);

-- Location: LCCOMB_X31_Y21_N6
\Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (tail_pos_x(3) & (\Add9~5\ & VCC)) # (!tail_pos_x(3) & (!\Add9~5\))
-- \Add9~7\ = CARRY((!tail_pos_x(3) & !\Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_pos_x(3),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: FF_X31_Y21_N17
\tail_pos_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tail_pos_x[3]~12_combout\,
	asdata => \Add9~6_combout\,
	clrn => \rst~input_o\,
	sclr => \tail_pos_x[4]~16_combout\,
	sload => \vram|altsyncram_component|auto_generated|q_b\(2),
	ena => \tail_pos_x[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_pos_x(3));

-- Location: LCCOMB_X31_Y21_N18
\tail_pos_x[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_pos_x[4]~14_combout\ = \tail_pos_x[3]~13\ $ (!tail_pos_x(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tail_pos_x(4),
	cin => \tail_pos_x[3]~13\,
	combout => \tail_pos_x[4]~14_combout\);

-- Location: LCCOMB_X31_Y21_N8
\Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = \Add9~7\ $ (tail_pos_x(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tail_pos_x(4),
	cin => \Add9~7\,
	combout => \Add9~8_combout\);

-- Location: FF_X31_Y21_N19
\tail_pos_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tail_pos_x[4]~14_combout\,
	asdata => \Add9~8_combout\,
	clrn => \rst~input_o\,
	sclr => \tail_pos_x[4]~16_combout\,
	sload => \vram|altsyncram_component|auto_generated|q_b\(2),
	ena => \tail_pos_x[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_pos_x(4));

-- Location: LCCOMB_X31_Y21_N26
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Add9~2_combout\ & ((tail_pos_x(4)) # (\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tail_pos_x(4),
	datac => \LessThan2~0_combout\,
	datad => \Add9~2_combout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X31_Y21_N13
\tail_pos_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tail_pos_x[1]~8_combout\,
	asdata => \Mux8~0_combout\,
	clrn => \rst~input_o\,
	sclr => \tail_pos_x[4]~16_combout\,
	sload => \vram|altsyncram_component|auto_generated|q_b\(2),
	ena => \tail_pos_x[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_pos_x(1));

-- Location: LCCOMB_X31_Y21_N22
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (tail_pos_x(1)) # ((tail_pos_x(3)) # ((tail_pos_x(2)) # (tail_pos_x(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_x(1),
	datab => tail_pos_x(3),
	datac => tail_pos_x(2),
	datad => tail_pos_x(0),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y21_N28
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Add9~0_combout\ & ((\LessThan2~0_combout\) # (tail_pos_x(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~0_combout\,
	datac => \LessThan2~0_combout\,
	datad => tail_pos_x(4),
	combout => \Mux9~0_combout\);

-- Location: FF_X31_Y21_N11
\tail_pos_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tail_pos_x[0]~6_combout\,
	asdata => \Mux9~0_combout\,
	clrn => \rst~input_o\,
	sclr => \tail_pos_x[4]~16_combout\,
	sload => \vram|altsyncram_component|auto_generated|q_b\(2),
	ena => \tail_pos_x[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_pos_x(0));

-- Location: LCCOMB_X27_Y22_N16
\vaddr_write~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~15_combout\ = (\vaddr_write[6]~2_combout\ & ((\vaddr_write[6]~3_combout\ & ((\Add3~0_combout\))) # (!\vaddr_write[6]~3_combout\ & (\Add7~0_combout\)))) # (!\vaddr_write[6]~2_combout\ & (((\vaddr_write[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_write[6]~2_combout\,
	datab => \Add7~0_combout\,
	datac => \vaddr_write[6]~3_combout\,
	datad => \Add3~0_combout\,
	combout => \vaddr_write~15_combout\);

-- Location: LCCOMB_X27_Y22_N28
\vaddr_write~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~16_combout\ = (\vaddr_write[6]~2_combout\ & (((\vaddr_write~15_combout\)))) # (!\vaddr_write[6]~2_combout\ & ((\vaddr_write~15_combout\ & (\Add0~0_combout\)) # (!\vaddr_write~15_combout\ & ((\Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_write[6]~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add2~0_combout\,
	datad => \vaddr_write~15_combout\,
	combout => \vaddr_write~16_combout\);

-- Location: FF_X27_Y22_N29
\vaddr_write[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_write~16_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_write[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_write(0));

-- Location: LCCOMB_X32_Y21_N24
\tail_pos_y[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_pos_y[4]~0_combout\ = (\vram|altsyncram_component|auto_generated|q_b\(3) & \tail_pos_x[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vram|altsyncram_component|auto_generated|q_b\(3),
	datad => \tail_pos_x[4]~5_combout\,
	combout => \tail_pos_y[4]~0_combout\);

-- Location: FF_X34_Y21_N21
\tail_pos_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~11_combout\,
	clrn => \rst~input_o\,
	ena => \tail_pos_y[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_pos_y(3));

-- Location: LCCOMB_X35_Y21_N20
\Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = \Add10~7\ $ (tail_pos_y(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tail_pos_y(4),
	cin => \Add10~7\,
	combout => \Add10~8_combout\);

-- Location: LCCOMB_X34_Y21_N8
\Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = \Add11~10\ $ (!tail_pos_y(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tail_pos_y(4),
	cin => \Add11~10\,
	combout => \Add11~14_combout\);

-- Location: LCCOMB_X34_Y21_N24
\Add11~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = (\Add10~8_combout\ & (((\Add11~14_combout\ & \Add11~3_combout\)) # (!\vram|altsyncram_component|auto_generated|q_b\(2)))) # (!\Add10~8_combout\ & (((\Add11~14_combout\ & \Add11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~8_combout\,
	datab => \vram|altsyncram_component|auto_generated|q_b\(2),
	datac => \Add11~14_combout\,
	datad => \Add11~3_combout\,
	combout => \Add11~16_combout\);

-- Location: FF_X34_Y21_N25
\tail_pos_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~16_combout\,
	clrn => \rst~input_o\,
	ena => \tail_pos_y[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_pos_y(4));

-- Location: LCCOMB_X34_Y21_N18
\Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (!\vram|altsyncram_component|auto_generated|q_b\(2) & ((tail_pos_y(4)) # ((tail_pos_y(0)) # (!\LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(4),
	datab => \vram|altsyncram_component|auto_generated|q_b\(2),
	datac => tail_pos_y(0),
	datad => \LessThan4~0_combout\,
	combout => \Add11~2_combout\);

-- Location: LCCOMB_X35_Y21_N0
\Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (\Add11~0_combout\ & ((\Add11~3_combout\) # ((\Add11~2_combout\ & \Add10~0_combout\)))) # (!\Add11~0_combout\ & (\Add11~2_combout\ & ((\Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~0_combout\,
	datab => \Add11~2_combout\,
	datac => \Add11~3_combout\,
	datad => \Add10~0_combout\,
	combout => \Add11~4_combout\);

-- Location: FF_X34_Y21_N19
\tail_pos_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add11~4_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \tail_pos_y[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_pos_y(0));

-- Location: LCCOMB_X34_Y21_N2
\Add11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~5_combout\ = (tail_pos_y(1) & ((\Add11~1\) # (GND))) # (!tail_pos_y(1) & (!\Add11~1\))
-- \Add11~6\ = CARRY((tail_pos_y(1)) # (!\Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(1),
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~5_combout\,
	cout => \Add11~6\);

-- Location: LCCOMB_X34_Y21_N12
\Add11~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~13_combout\ = (\Add11~3_combout\ & ((\Add11~7_combout\) # ((\Add11~2_combout\ & \Add10~4_combout\)))) # (!\Add11~3_combout\ & (((\Add11~2_combout\ & \Add10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~3_combout\,
	datab => \Add11~7_combout\,
	datac => \Add11~2_combout\,
	datad => \Add10~4_combout\,
	combout => \Add11~13_combout\);

-- Location: FF_X34_Y21_N13
\tail_pos_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~13_combout\,
	clrn => \rst~input_o\,
	ena => \tail_pos_y[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_pos_y(2));

-- Location: LCCOMB_X34_Y21_N28
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!tail_pos_y(2) & (!tail_pos_y(3) & tail_pos_y(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_pos_y(2),
	datab => tail_pos_y(3),
	datad => tail_pos_y(1),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X34_Y21_N26
\Add11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~3_combout\ = (\vram|altsyncram_component|auto_generated|q_b\(2) & ((\LessThan4~0_combout\) # (!tail_pos_y(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~0_combout\,
	datac => \vram|altsyncram_component|auto_generated|q_b\(2),
	datad => tail_pos_y(4),
	combout => \Add11~3_combout\);

-- Location: LCCOMB_X34_Y21_N10
\Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (\Add11~3_combout\ & (!\Add11~5_combout\ & ((\vram|altsyncram_component|auto_generated|q_b\(2)) # (!\Add10~2_combout\)))) # (!\Add11~3_combout\ & (((\vram|altsyncram_component|auto_generated|q_b\(2))) # (!\Add10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~3_combout\,
	datab => \Add10~2_combout\,
	datac => \vram|altsyncram_component|auto_generated|q_b\(2),
	datad => \Add11~5_combout\,
	combout => \Add11~12_combout\);

-- Location: FF_X34_Y21_N11
\tail_pos_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~12_combout\,
	clrn => \rst~input_o\,
	ena => \tail_pos_y[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_pos_y(1));

-- Location: LCCOMB_X29_Y22_N12
\vaddr_write~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~17_combout\ = (\vaddr_write[6]~2_combout\ & (!\vaddr_write[6]~3_combout\ & ((\Add7~2_combout\)))) # (!\vaddr_write[6]~2_combout\ & ((\vaddr_write[6]~3_combout\) # ((\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_write[6]~2_combout\,
	datab => \vaddr_write[6]~3_combout\,
	datac => \Add2~2_combout\,
	datad => \Add7~2_combout\,
	combout => \vaddr_write~17_combout\);

-- Location: LCCOMB_X29_Y22_N0
\vaddr_write~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write~18_combout\ = (\vaddr_write~17_combout\ & (((\Add0~2_combout\)) # (!\vaddr_write[6]~3_combout\))) # (!\vaddr_write~17_combout\ & (\vaddr_write[6]~3_combout\ & ((\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vaddr_write~17_combout\,
	datab => \vaddr_write[6]~3_combout\,
	datac => \Add0~2_combout\,
	datad => \Add3~2_combout\,
	combout => \vaddr_write~18_combout\);

-- Location: FF_X29_Y22_N1
\vaddr_write[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vaddr_write~18_combout\,
	clrn => \rst~input_o\,
	ena => \vaddr_write[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vaddr_write(1));

-- Location: LCCOMB_X26_Y22_N22
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!vaddr_write(2) & ((!vaddr_write(0)) # (!vaddr_write(1))))) # (!vaddr_write(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vaddr_write(1),
	datab => vaddr_write(2),
	datac => vaddr_write(4),
	datad => vaddr_write(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y22_N28
\vaddr_write[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write[6]~0_combout\ = (vaddr_write(6) & (vaddr_write(7) & vaddr_write(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vaddr_write(6),
	datac => vaddr_write(7),
	datad => vaddr_write(8),
	combout => \vaddr_write[6]~0_combout\);

-- Location: LCCOMB_X26_Y22_N26
\vaddr_write[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vaddr_write[6]~1_combout\ = (\vaddr_write[6]~0_combout\ & ((vaddr_write(5)) # ((!\LessThan0~0_combout\ & vaddr_write(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \vaddr_write[6]~0_combout\,
	datac => vaddr_write(3),
	datad => vaddr_write(5),
	combout => \vaddr_write[6]~1_combout\);

-- Location: LCCOMB_X30_Y20_N14
\ram_state.ram_clr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state.ram_clr~0_combout\ = (\vaddr_write[6]~1_combout\) # (\ram_state.ram_clr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vaddr_write[6]~1_combout\,
	datad => \ram_state.ram_clr~q\,
	combout => \ram_state.ram_clr~0_combout\);

-- Location: LCCOMB_X30_Y20_N16
\ram_state.ram_clr~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state.ram_clr~feeder_combout\ = \ram_state.ram_clr~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_state.ram_clr~0_combout\,
	combout => \ram_state.ram_clr~feeder_combout\);

-- Location: FF_X30_Y20_N17
\ram_state.ram_clr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_state.ram_clr~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_state.ram_clr~q\);

-- Location: LCCOMB_X29_Y19_N2
\ram_state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state~23_combout\ = (\ram_state.ram_gen_apple~q\ & (\Equal0~0_combout\)) # (!\ram_state.ram_gen_apple~q\ & ((\ram_state.ram_clr_tail~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_gen_apple~q\,
	datac => \Equal0~0_combout\,
	datad => \ram_state.ram_clr_tail~q\,
	combout => \ram_state~23_combout\);

-- Location: LCCOMB_X29_Y19_N24
\ram_state~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state~24_combout\ = (\ram_state.ram_gen_apple~q\ & ((\vram|altsyncram_component|auto_generated|q_b\(0)) # ((!\ram_state~23_combout\)))) # (!\ram_state.ram_gen_apple~q\ & (((\Equal9~2_combout\ & \ram_state~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_gen_apple~q\,
	datab => \vram|altsyncram_component|auto_generated|q_b\(0),
	datac => \Equal9~2_combout\,
	datad => \ram_state~23_combout\,
	combout => \ram_state~24_combout\);

-- Location: LCCOMB_X29_Y19_N14
\ram_state~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state~29_combout\ = (\ram_state.ram_clr~q\ & ((\ram_state~28_combout\) # (\ram_state~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state~28_combout\,
	datab => \ram_state.ram_clr~q\,
	datad => \ram_state~24_combout\,
	combout => \ram_state~29_combout\);

-- Location: LCCOMB_X29_Y19_N28
\ram_state~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state~25_combout\ = (\video|h_cnt\(2)) # ((!\Equal3~1_combout\) # (!\video|h_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \video|h_cnt\(2),
	datac => \video|h_cnt\(0),
	datad => \Equal3~1_combout\,
	combout => \ram_state~25_combout\);

-- Location: LCCOMB_X30_Y19_N14
\cnt[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[4]~5_combout\ = (!\video|v_cnt\(4) & (!\video|h_cnt\(3) & !\video|h_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(4),
	datab => \video|h_cnt\(3),
	datad => \video|h_cnt\(1),
	combout => \cnt[4]~5_combout\);

-- Location: LCCOMB_X30_Y19_N22
\cnt[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[4]~6_combout\ = (!\video|h_cnt\(5) & (\Equal6~1_combout\ & (\cnt[4]~5_combout\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(5),
	datab => \Equal6~1_combout\,
	datac => \cnt[4]~5_combout\,
	datad => \Equal6~0_combout\,
	combout => \cnt[4]~6_combout\);

-- Location: LCCOMB_X29_Y19_N10
\ram_state~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state~26_combout\ = (\ram_state.ram_render~q\ & (!\rtl~0_combout\ & ((\ram_state~25_combout\) # (!\cnt[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state~25_combout\,
	datab => \cnt[4]~6_combout\,
	datac => \ram_state.ram_render~q\,
	datad => \rtl~0_combout\,
	combout => \ram_state~26_combout\);

-- Location: LCCOMB_X29_Y19_N8
\ram_state~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state~27_combout\ = (\ram_state~26_combout\) # ((!\ram_state.ram_render~q\ & ((!\Pixel_Color~0_combout\) # (!\score[8]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score[8]~23_combout\,
	datab => \ram_state.ram_render~q\,
	datac => \Pixel_Color~0_combout\,
	datad => \ram_state~26_combout\,
	combout => \ram_state~27_combout\);

-- Location: LCCOMB_X29_Y19_N20
\ram_state~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state~30_combout\ = (\ram_state.ram_clr~0_combout\ & (((!\ram_state~27_combout\ & !\ram_state~24_combout\)) # (!\ram_state~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state~29_combout\,
	datab => \ram_state.ram_clr~0_combout\,
	datac => \ram_state~27_combout\,
	datad => \ram_state~24_combout\,
	combout => \ram_state~30_combout\);

-- Location: FF_X29_Y19_N11
\ram_state.ram_render\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_state.ram_set_head~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ram_state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_state.ram_render~q\);

-- Location: LCCOMB_X30_Y19_N8
\cnt[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[4]~17_combout\ = (!\video|h_cnt\(0) & (\Equal3~1_combout\ & (\video|h_cnt\(2) & \cnt[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(0),
	datab => \Equal3~1_combout\,
	datac => \video|h_cnt\(2),
	datad => \cnt[4]~6_combout\,
	combout => \cnt[4]~17_combout\);

-- Location: LCCOMB_X31_Y19_N14
\cnt[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[4]~18_combout\ = (\ram_state.ram_render~q\ & ((\rtl~0_combout\) # (\cnt[4]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0_combout\,
	datac => \ram_state.ram_render~q\,
	datad => \cnt[4]~17_combout\,
	combout => \cnt[4]~18_combout\);

-- Location: FF_X30_Y19_N1
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt[0]~7_combout\,
	clrn => \rst~input_o\,
	sclr => \rtl~0_combout\,
	sload => VCC,
	ena => \cnt[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X31_Y19_N22
\cnt[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[1]~9_combout\ = (cnt(1) & (!\cnt[0]~8\)) # (!cnt(1) & ((\cnt[0]~8\) # (GND)))
-- \cnt[1]~10\ = CARRY((!\cnt[0]~8\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datad => VCC,
	cin => \cnt[0]~8\,
	combout => \cnt[1]~9_combout\,
	cout => \cnt[1]~10\);

-- Location: FF_X31_Y19_N23
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cnt[1]~9_combout\,
	clrn => \rst~input_o\,
	sclr => \rtl~0_combout\,
	ena => \cnt[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X31_Y19_N24
\cnt[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~11_combout\ = (cnt(2) & (\cnt[1]~10\ $ (GND))) # (!cnt(2) & (!\cnt[1]~10\ & VCC))
-- \cnt[2]~12\ = CARRY((cnt(2) & !\cnt[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~10\,
	combout => \cnt[2]~11_combout\,
	cout => \cnt[2]~12\);

-- Location: FF_X31_Y19_N25
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cnt[2]~11_combout\,
	clrn => \rst~input_o\,
	sclr => \rtl~0_combout\,
	ena => \cnt[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X31_Y19_N26
\cnt[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[3]~13_combout\ = (cnt(3) & (!\cnt[2]~12\)) # (!cnt(3) & ((\cnt[2]~12\) # (GND)))
-- \cnt[3]~14\ = CARRY((!\cnt[2]~12\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \cnt[2]~12\,
	combout => \cnt[3]~13_combout\,
	cout => \cnt[3]~14\);

-- Location: FF_X31_Y19_N27
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cnt[3]~13_combout\,
	clrn => \rst~input_o\,
	sclr => \rtl~0_combout\,
	ena => \cnt[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X31_Y19_N12
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (cnt(3) & cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(3),
	datad => cnt(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X31_Y19_N28
\cnt[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[4]~15_combout\ = \cnt[3]~14\ $ (!cnt(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(4),
	cin => \cnt[3]~14\,
	combout => \cnt[4]~15_combout\);

-- Location: FF_X31_Y19_N29
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cnt[4]~15_combout\,
	clrn => \rst~input_o\,
	sclr => \rtl~0_combout\,
	ena => \cnt[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X30_Y19_N10
\rtl~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((cnt(1) & (cnt(0) & (\Equal2~0_combout\ & !cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(0),
	datac => \Equal2~0_combout\,
	datad => cnt(4),
	combout => \rtl~0_combout\);

-- Location: LCCOMB_X29_Y19_N26
\ram_state~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state~34_combout\ = (!\ram_state~23_combout\ & ((\ram_state.ram_set_apple~q\) # ((!\rtl~0_combout\ & \ram_state.ram_render~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0_combout\,
	datab => \ram_state~23_combout\,
	datac => \ram_state.ram_render~q\,
	datad => \ram_state.ram_set_apple~q\,
	combout => \ram_state~34_combout\);

-- Location: FF_X29_Y19_N27
\ram_state.ram_set_head\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_state~34_combout\,
	clrn => \rst~input_o\,
	ena => \ram_state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_state.ram_set_head~q\);

-- Location: LCCOMB_X30_Y20_N12
\ram_state.ram_gen_apple~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state.ram_gen_apple~0_combout\ = (\ram_state.ram_set_head~q\) # (\ram_state.ram_set_apple~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_state.ram_set_head~q\,
	datad => \ram_state.ram_set_apple~q\,
	combout => \ram_state.ram_gen_apple~0_combout\);

-- Location: FF_X29_Y20_N27
\vdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_state.ram_gen_apple~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \vdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vdata(0));

-- Location: LCCOMB_X29_Y8_N6
\Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\vram|altsyncram_component|auto_generated|q_b\(0)) # (!\vram|altsyncram_component|auto_generated|q_b\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vram|altsyncram_component|auto_generated|q_b\(1),
	datac => \vram|altsyncram_component|auto_generated|q_b\(0),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X29_Y19_N12
\ram_state.ram_gen_apple~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state.ram_gen_apple~2_combout\ = (!\Equal7~0_combout\ & (!\ram_state.ram_gen_apple~1_combout\ & (!\ram_state.ram_render~q\ & !\ram_state.ram_gen_apple~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \ram_state.ram_gen_apple~1_combout\,
	datac => \ram_state.ram_render~q\,
	datad => \ram_state.ram_gen_apple~0_combout\,
	combout => \ram_state.ram_gen_apple~2_combout\);

-- Location: LCCOMB_X29_Y19_N30
\ram_state~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state~31_combout\ = (\ram_state.ram_clr~q\ & ((\ram_state~24_combout\) # ((\ram_state~28_combout\ & \ram_state~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state~28_combout\,
	datab => \ram_state.ram_clr~q\,
	datac => \ram_state~27_combout\,
	datad => \ram_state~24_combout\,
	combout => \ram_state~31_combout\);

-- Location: LCCOMB_X29_Y19_N0
\ram_state.ram_gen_apple~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_state.ram_gen_apple~3_combout\ = (\ram_state.ram_clr~0_combout\ & ((\ram_state~31_combout\ & ((\ram_state.ram_gen_apple~q\))) # (!\ram_state~31_combout\ & (\ram_state.ram_gen_apple~2_combout\)))) # (!\ram_state.ram_clr~0_combout\ & 
-- (((\ram_state.ram_gen_apple~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_gen_apple~2_combout\,
	datab => \ram_state.ram_clr~0_combout\,
	datac => \ram_state.ram_gen_apple~q\,
	datad => \ram_state~31_combout\,
	combout => \ram_state.ram_gen_apple~3_combout\);

-- Location: FF_X29_Y19_N1
\ram_state.ram_gen_apple\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_state.ram_gen_apple~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_state.ram_gen_apple~q\);

-- Location: LCCOMB_X30_Y20_N18
\vwren~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vwren~0_combout\ = (!\vwren~q\ & (((\ram_state.ram_gen_apple~q\) # (!\ram_state.ram_render~q\)) # (!\ram_state.ram_clr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vwren~q\,
	datab => \ram_state.ram_clr~q\,
	datac => \ram_state.ram_gen_apple~q\,
	datad => \ram_state.ram_render~q\,
	combout => \vwren~0_combout\);

-- Location: LCCOMB_X30_Y20_N4
\vwren~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vwren~1_combout\ = (\ram_state.ram_gen_apple~0_combout\) # ((!\ram_state.ram_render~q\ & (!\ram_state.ram_check~q\ & \tail_pos_x[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_gen_apple~0_combout\,
	datab => \ram_state.ram_render~q\,
	datac => \ram_state.ram_check~q\,
	datad => \tail_pos_x[4]~5_combout\,
	combout => \vwren~1_combout\);

-- Location: LCCOMB_X30_Y20_N6
\vwren~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vwren~2_combout\ = (!\vwren~0_combout\ & ((\ram_state.ram_gen_apple~q\) # ((!\ram_state.ram_clr~q\) # (!\vwren~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_state.ram_gen_apple~q\,
	datab => \vwren~0_combout\,
	datac => \vwren~1_combout\,
	datad => \ram_state.ram_clr~q\,
	combout => \vwren~2_combout\);

-- Location: FF_X30_Y20_N7
vwren : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vwren~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vwren~q\);

-- Location: LCCOMB_X29_Y8_N22
\Pixel_Color~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Pixel_Color~0_combout\ = \vram|altsyncram_component|auto_generated|q_b\(0) $ (!\vram|altsyncram_component|auto_generated|q_b\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vram|altsyncram_component|auto_generated|q_b\(0),
	datad => \vram|altsyncram_component|auto_generated|q_b\(1),
	combout => \Pixel_Color~0_combout\);

-- Location: LCCOMB_X29_Y8_N20
\Pixel_Color[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Pixel_Color[9]~feeder_combout\ = \Pixel_Color~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pixel_Color~0_combout\,
	combout => \Pixel_Color[9]~feeder_combout\);

-- Location: FF_X29_Y8_N21
\Pixel_Color[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pixel_Color[9]~feeder_combout\,
	ena => \video|valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Pixel_Color(9));

-- Location: LCCOMB_X29_Y8_N2
\vga_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_r~0_combout\ = (Pixel_Color(9) & \video|valid~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Pixel_Color(9),
	datad => \video|valid~6_combout\,
	combout => \vga_r~0_combout\);

-- Location: FF_X29_Y8_N3
\vga_r[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_r[1]~reg0_q\);

-- Location: LCCOMB_X29_Y8_N26
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\vram|altsyncram_component|auto_generated|q_b\(1)) # (!\vram|altsyncram_component|auto_generated|q_b\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vram|altsyncram_component|auto_generated|q_b\(1),
	datac => \vram|altsyncram_component|auto_generated|q_b\(0),
	combout => \Decoder0~0_combout\);

-- Location: FF_X29_Y8_N27
\Pixel_Color[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~0_combout\,
	ena => \video|valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Pixel_Color(10));

-- Location: LCCOMB_X29_Y8_N12
\vga_r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_r~1_combout\ = (Pixel_Color(10) & \video|valid~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Pixel_Color(10),
	datad => \video|valid~6_combout\,
	combout => \vga_r~1_combout\);

-- Location: FF_X29_Y8_N13
\vga_r[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_r[2]~reg0_q\);

-- Location: LCCOMB_X29_Y8_N24
\Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\vram|altsyncram_component|auto_generated|q_b\(0)) # (!\vram|altsyncram_component|auto_generated|q_b\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vram|altsyncram_component|auto_generated|q_b\(1),
	datac => \vram|altsyncram_component|auto_generated|q_b\(0),
	combout => \Decoder0~1_combout\);

-- Location: FF_X29_Y8_N25
\Pixel_Color[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~1_combout\,
	ena => \video|valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Pixel_Color(11));

-- Location: LCCOMB_X29_Y8_N30
\vga_r~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_r~2_combout\ = (Pixel_Color(11) & \video|valid~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Pixel_Color(11),
	datad => \video|valid~6_combout\,
	combout => \vga_r~2_combout\);

-- Location: FF_X29_Y8_N31
\vga_r[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_r[3]~reg0_q\);

-- Location: FF_X29_Y8_N7
\Pixel_Color[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal7~0_combout\,
	ena => \video|valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Pixel_Color(6));

-- Location: LCCOMB_X29_Y8_N8
\vga_g~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_g~0_combout\ = (Pixel_Color(6) & \video|valid~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Pixel_Color(6),
	datad => \video|valid~6_combout\,
	combout => \vga_g~0_combout\);

-- Location: LCCOMB_X30_Y8_N20
\vga_g[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_g[0]~reg0feeder_combout\ = \vga_g~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_g~0_combout\,
	combout => \vga_g[0]~reg0feeder_combout\);

-- Location: FF_X30_Y8_N21
\vga_g[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_g[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_g[0]~reg0_q\);

-- Location: LCCOMB_X29_Y8_N28
\Pixel_Color[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Pixel_Color[7]~4_combout\ = !\vram|altsyncram_component|auto_generated|q_b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vram|altsyncram_component|auto_generated|q_b\(1),
	combout => \Pixel_Color[7]~4_combout\);

-- Location: FF_X29_Y8_N29
\Pixel_Color[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pixel_Color[7]~4_combout\,
	ena => \video|valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Pixel_Color(7));

-- Location: LCCOMB_X29_Y8_N18
\vga_g~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_g~1_combout\ = (Pixel_Color(7) & \video|valid~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Pixel_Color(7),
	datad => \video|valid~6_combout\,
	combout => \vga_g~1_combout\);

-- Location: LCCOMB_X30_Y8_N26
\vga_g[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_g[1]~reg0feeder_combout\ = \vga_g~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_g~1_combout\,
	combout => \vga_g[1]~reg0feeder_combout\);

-- Location: FF_X30_Y8_N27
\vga_g[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_g[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_g[1]~reg0_q\);

-- Location: FF_X29_Y8_N9
\vga_g[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_g~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_g[2]~reg0_q\);

-- Location: FF_X29_Y8_N19
\vga_g[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_g~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_g[3]~reg0_q\);

-- Location: LCCOMB_X29_Y8_N14
\Pixel_Color[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Pixel_Color[2]~5_combout\ = !\vram|altsyncram_component|auto_generated|q_b\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vram|altsyncram_component|auto_generated|q_b\(0),
	combout => \Pixel_Color[2]~5_combout\);

-- Location: FF_X29_Y8_N15
\Pixel_Color[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pixel_Color[2]~5_combout\,
	ena => \video|valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Pixel_Color(2));

-- Location: LCCOMB_X30_Y4_N0
\vga_b~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_b~0_combout\ = (\video|valid~6_combout\ & Pixel_Color(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \video|valid~6_combout\,
	datad => Pixel_Color(2),
	combout => \vga_b~0_combout\);

-- Location: LCCOMB_X30_Y4_N4
\vga_b[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_b[0]~reg0feeder_combout\ = \vga_b~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_b~0_combout\,
	combout => \vga_b[0]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N5
\vga_b[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_b[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_b[0]~reg0_q\);

-- Location: LCCOMB_X30_Y4_N22
\vga_b[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_b[1]~reg0feeder_combout\ = \vga_b~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_b~0_combout\,
	combout => \vga_b[1]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N23
\vga_b[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_b[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_b[1]~reg0_q\);

-- Location: FF_X30_Y4_N1
\vga_b[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_b[2]~reg0_q\);

-- Location: LCCOMB_X29_Y8_N16
\Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\vram|altsyncram_component|auto_generated|q_b\(1) & !\vram|altsyncram_component|auto_generated|q_b\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vram|altsyncram_component|auto_generated|q_b\(1),
	datac => \vram|altsyncram_component|auto_generated|q_b\(0),
	combout => \Decoder0~2_combout\);

-- Location: FF_X29_Y8_N17
\Pixel_Color[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~2_combout\,
	ena => \video|valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Pixel_Color(3));

-- Location: LCCOMB_X29_Y8_N4
\vga_b~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_b~1_combout\ = (Pixel_Color(3) & \video|valid~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Pixel_Color(3),
	datad => \video|valid~6_combout\,
	combout => \vga_b~1_combout\);

-- Location: FF_X29_Y8_N5
\vga_b[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_b[3]~reg0_q\);

-- Location: LCCOMB_X30_Y19_N0
\video|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|LessThan0~1_combout\ = (\video|h_cnt\(5) & (\video|h_cnt\(4) & \video|h_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(5),
	datab => \video|h_cnt\(4),
	datad => \video|h_cnt\(3),
	combout => \video|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y19_N4
\video|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|LessThan0~0_combout\ = (\video|h_cnt\(6) & ((\video|h_cnt\(2)) # ((\video|h_cnt\(1)) # (\video|h_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(2),
	datab => \video|h_cnt\(1),
	datac => \video|h_cnt\(6),
	datad => \video|h_cnt\(0),
	combout => \video|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y19_N4
\video|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|LessThan2~0_combout\ = (!\video|h_cnt\(7) & (!\video|h_cnt\(8) & !\video|h_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|h_cnt\(7),
	datac => \video|h_cnt\(8),
	datad => \video|h_cnt\(9),
	combout => \video|LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y19_N24
\video|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|LessThan0~2_combout\ = (!\video|h_cnt\(10) & (\video|LessThan2~0_combout\ & ((!\video|LessThan0~0_combout\) # (!\video|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|LessThan0~1_combout\,
	datab => \video|h_cnt\(10),
	datac => \video|LessThan0~0_combout\,
	datad => \video|LessThan2~0_combout\,
	combout => \video|LessThan0~2_combout\);

-- Location: FF_X30_Y19_N25
\video|hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|LessThan0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|hsync~q\);

-- Location: LCCOMB_X30_Y23_N22
\video|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|LessThan1~0_combout\ = (\video|v_cnt\(5)) # ((\video|v_cnt\(0) & (\video|v_cnt\(2) & \video|v_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(0),
	datab => \video|v_cnt\(2),
	datac => \video|v_cnt\(5),
	datad => \video|v_cnt\(1),
	combout => \video|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y23_N28
\video|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \video|LessThan1~1_combout\ = (!\video|v_cnt\(3) & (!\video|LessThan1~0_combout\ & (!\video|v_cnt\(4) & \video|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video|v_cnt\(3),
	datab => \video|LessThan1~0_combout\,
	datac => \video|v_cnt\(4),
	datad => \video|LessThan4~0_combout\,
	combout => \video|LessThan1~1_combout\);

-- Location: FF_X31_Y23_N29
\video|vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \video|LessThan1~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video|vsync~q\);

-- Location: LCCOMB_X31_Y19_N0
\score[0]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[0]~39_combout\ = score(0) $ (((\vram|altsyncram_component|auto_generated|q_b\(0) & (\vram|altsyncram_component|auto_generated|q_b\(1) & \score[8]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vram|altsyncram_component|auto_generated|q_b\(0),
	datab => \vram|altsyncram_component|auto_generated|q_b\(1),
	datac => score(0),
	datad => \score[8]~23_combout\,
	combout => \score[0]~39_combout\);

-- Location: FF_X31_Y19_N1
\score[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score[0]~39_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(0));

-- Location: LCCOMB_X27_Y4_N8
\score[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[1]~15_combout\ = (score(0) & (score(1) $ (VCC))) # (!score(0) & (score(1) & VCC))
-- \score[1]~16\ = CARRY((score(0) & score(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(0),
	datab => score(1),
	datad => VCC,
	combout => \score[1]~15_combout\,
	cout => \score[1]~16\);

-- Location: LCCOMB_X31_Y19_N18
\score[8]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[8]~38_combout\ = (\vram|altsyncram_component|auto_generated|q_b\(1) & (\vram|altsyncram_component|auto_generated|q_b\(0) & \score[8]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vram|altsyncram_component|auto_generated|q_b\(1),
	datac => \vram|altsyncram_component|auto_generated|q_b\(0),
	datad => \score[8]~23_combout\,
	combout => \score[8]~38_combout\);

-- Location: FF_X27_Y4_N9
\score[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score[1]~15_combout\,
	clrn => \rst~input_o\,
	ena => \score[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(1));

-- Location: LCCOMB_X15_Y4_N20
\led|Refresh[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|Refresh[0]~2_combout\ = !\led|Refresh\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led|Refresh\(0),
	combout => \led|Refresh[0]~2_combout\);

-- Location: FF_X15_Y4_N21
\led|Refresh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key|cnt[14]~clkctrl_outclk\,
	d => \led|Refresh[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led|Refresh\(0));

-- Location: LCCOMB_X27_Y4_N10
\score[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[2]~17_combout\ = (score(2) & (!\score[1]~16\)) # (!score(2) & ((\score[1]~16\) # (GND)))
-- \score[2]~18\ = CARRY((!\score[1]~16\) # (!score(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score(2),
	datad => VCC,
	cin => \score[1]~16\,
	combout => \score[2]~17_combout\,
	cout => \score[2]~18\);

-- Location: FF_X27_Y4_N11
\score[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score[2]~17_combout\,
	clrn => \rst~input_o\,
	ena => \score[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(2));

-- Location: LCCOMB_X27_Y4_N12
\score[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[3]~19_combout\ = (score(3) & (\score[2]~18\ $ (GND))) # (!score(3) & (!\score[2]~18\ & VCC))
-- \score[3]~20\ = CARRY((score(3) & !\score[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score(3),
	datad => VCC,
	cin => \score[2]~18\,
	combout => \score[3]~19_combout\,
	cout => \score[3]~20\);

-- Location: FF_X27_Y4_N13
\score[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score[3]~19_combout\,
	clrn => \rst~input_o\,
	ena => \score[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(3));

-- Location: LCCOMB_X27_Y4_N14
\score[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[4]~21_combout\ = (score(4) & (!\score[3]~20\)) # (!score(4) & ((\score[3]~20\) # (GND)))
-- \score[4]~22\ = CARRY((!\score[3]~20\) # (!score(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score(4),
	datad => VCC,
	cin => \score[3]~20\,
	combout => \score[4]~21_combout\,
	cout => \score[4]~22\);

-- Location: FF_X27_Y4_N15
\score[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score[4]~21_combout\,
	clrn => \rst~input_o\,
	ena => \score[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(4));

-- Location: LCCOMB_X27_Y4_N16
\score[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[5]~24_combout\ = (score(5) & (\score[4]~22\ $ (GND))) # (!score(5) & (!\score[4]~22\ & VCC))
-- \score[5]~25\ = CARRY((score(5) & !\score[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score(5),
	datad => VCC,
	cin => \score[4]~22\,
	combout => \score[5]~24_combout\,
	cout => \score[5]~25\);

-- Location: FF_X27_Y4_N17
\score[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score[5]~24_combout\,
	clrn => \rst~input_o\,
	ena => \score[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(5));

-- Location: LCCOMB_X15_Y4_N6
\led|Refresh[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|Refresh[1]~0_combout\ = \led|Refresh\(1) $ (\led|Refresh\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led|Refresh\(1),
	datad => \led|Refresh\(0),
	combout => \led|Refresh[1]~0_combout\);

-- Location: FF_X15_Y4_N7
\led|Refresh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key|cnt[14]~clkctrl_outclk\,
	d => \led|Refresh[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led|Refresh\(1));

-- Location: LCCOMB_X27_Y4_N18
\score[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[6]~26_combout\ = (score(6) & (!\score[5]~25\)) # (!score(6) & ((\score[5]~25\) # (GND)))
-- \score[6]~27\ = CARRY((!\score[5]~25\) # (!score(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score(6),
	datad => VCC,
	cin => \score[5]~25\,
	combout => \score[6]~26_combout\,
	cout => \score[6]~27\);

-- Location: FF_X27_Y4_N19
\score[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score[6]~26_combout\,
	clrn => \rst~input_o\,
	ena => \score[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(6));

-- Location: LCCOMB_X27_Y4_N20
\score[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[7]~28_combout\ = (score(7) & (\score[6]~27\ $ (GND))) # (!score(7) & (!\score[6]~27\ & VCC))
-- \score[7]~29\ = CARRY((score(7) & !\score[6]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score(7),
	datad => VCC,
	cin => \score[6]~27\,
	combout => \score[7]~28_combout\,
	cout => \score[7]~29\);

-- Location: FF_X27_Y4_N21
\score[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score[7]~28_combout\,
	clrn => \rst~input_o\,
	ena => \score[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(7));

-- Location: LCCOMB_X27_Y4_N22
\score[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[8]~30_combout\ = (score(8) & (!\score[7]~29\)) # (!score(8) & ((\score[7]~29\) # (GND)))
-- \score[8]~31\ = CARRY((!\score[7]~29\) # (!score(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score(8),
	datad => VCC,
	cin => \score[7]~29\,
	combout => \score[8]~30_combout\,
	cout => \score[8]~31\);

-- Location: FF_X27_Y4_N23
\score[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score[8]~30_combout\,
	clrn => \rst~input_o\,
	ena => \score[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(8));

-- Location: LCCOMB_X27_Y4_N24
\score[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[9]~32_combout\ = (score(9) & (\score[8]~31\ $ (GND))) # (!score(9) & (!\score[8]~31\ & VCC))
-- \score[9]~33\ = CARRY((score(9) & !\score[8]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score(9),
	datad => VCC,
	cin => \score[8]~31\,
	combout => \score[9]~32_combout\,
	cout => \score[9]~33\);

-- Location: FF_X27_Y4_N25
\score[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score[9]~32_combout\,
	clrn => \rst~input_o\,
	ena => \score[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(9));

-- Location: LCCOMB_X26_Y4_N26
\led|LED[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|LED[1]~3_combout\ = (!\led|Refresh\(1) & ((\led|Refresh\(0) & (score(5))) # (!\led|Refresh\(0) & ((score(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led|Refresh\(0),
	datab => score(5),
	datac => \led|Refresh\(1),
	datad => score(9),
	combout => \led|LED[1]~3_combout\);

-- Location: LCCOMB_X15_Y4_N26
\led|Refresh[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|Refresh[2]~1_combout\ = \led|Refresh\(2) $ (((\led|Refresh\(0) & \led|Refresh\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \led|Refresh\(0),
	datac => \led|Refresh\(2),
	datad => \led|Refresh\(1),
	combout => \led|Refresh[2]~1_combout\);

-- Location: FF_X15_Y4_N27
\led|Refresh[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key|cnt[14]~clkctrl_outclk\,
	d => \led|Refresh[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led|Refresh\(2));

-- Location: LCCOMB_X15_Y4_N0
\led|LED[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|LED[0]~1_combout\ = (\led|Refresh\(1) & !\led|Refresh\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \led|Refresh\(1),
	datac => \led|Refresh\(0),
	combout => \led|LED[0]~1_combout\);

-- Location: LCCOMB_X15_Y4_N10
\led|LED[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|LED[1]~4_combout\ = (!\led|Refresh\(2) & ((\led|LED[1]~3_combout\) # ((score(1) & \led|LED[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(1),
	datab => \led|LED[1]~3_combout\,
	datac => \led|Refresh\(2),
	datad => \led|LED[0]~1_combout\,
	combout => \led|LED[1]~4_combout\);

-- Location: LCCOMB_X27_Y4_N26
\score[10]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[10]~34_combout\ = (score(10) & (!\score[9]~33\)) # (!score(10) & ((\score[9]~33\) # (GND)))
-- \score[10]~35\ = CARRY((!\score[9]~33\) # (!score(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score(10),
	datad => VCC,
	cin => \score[9]~33\,
	combout => \score[10]~34_combout\,
	cout => \score[10]~35\);

-- Location: FF_X27_Y4_N27
\score[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score[10]~34_combout\,
	clrn => \rst~input_o\,
	ena => \score[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(10));

-- Location: LCCOMB_X26_Y4_N4
\led|LED[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|LED[2]~5_combout\ = (!\led|Refresh\(1) & ((\led|Refresh\(0) & ((score(6)))) # (!\led|Refresh\(0) & (score(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(10),
	datab => \led|Refresh\(1),
	datac => \led|Refresh\(0),
	datad => score(6),
	combout => \led|LED[2]~5_combout\);

-- Location: LCCOMB_X15_Y4_N24
\led|LED[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|LED[2]~6_combout\ = (!\led|Refresh\(2) & ((\led|LED[2]~5_combout\) # ((score(2) & \led|LED[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(2),
	datab => \led|LED[2]~5_combout\,
	datac => \led|Refresh\(2),
	datad => \led|LED[0]~1_combout\,
	combout => \led|LED[2]~6_combout\);

-- Location: LCCOMB_X26_Y4_N0
\led|LED[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|LED[0]~0_combout\ = (!\led|Refresh\(1) & ((\led|Refresh\(0) & (score(4))) # (!\led|Refresh\(0) & ((score(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led|Refresh\(0),
	datab => \led|Refresh\(1),
	datac => score(4),
	datad => score(8),
	combout => \led|LED[0]~0_combout\);

-- Location: LCCOMB_X15_Y4_N4
\led|LED[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|LED[0]~2_combout\ = (!\led|Refresh\(2) & ((\led|LED[0]~0_combout\) # ((score(0) & \led|LED[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(0),
	datab => \led|LED[0]~0_combout\,
	datac => \led|Refresh\(2),
	datad => \led|LED[0]~1_combout\,
	combout => \led|LED[0]~2_combout\);

-- Location: LCCOMB_X27_Y4_N28
\score[11]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[11]~36_combout\ = \score[10]~35\ $ (!score(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => score(11),
	cin => \score[10]~35\,
	combout => \score[11]~36_combout\);

-- Location: FF_X27_Y4_N29
\score[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score[11]~36_combout\,
	clrn => \rst~input_o\,
	ena => \score[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(11));

-- Location: LCCOMB_X26_Y4_N10
\led|LED[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|LED[3]~7_combout\ = (!\led|Refresh\(1) & ((\led|Refresh\(0) & (score(7))) # (!\led|Refresh\(0) & ((score(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led|Refresh\(0),
	datab => \led|Refresh\(1),
	datac => score(7),
	datad => score(11),
	combout => \led|LED[3]~7_combout\);

-- Location: LCCOMB_X15_Y4_N18
\led|LED[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|LED[3]~8_combout\ = (!\led|Refresh\(2) & ((\led|LED[3]~7_combout\) # ((score(3) & \led|LED[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(3),
	datab => \led|LED[3]~7_combout\,
	datac => \led|Refresh\(2),
	datad => \led|LED[0]~1_combout\,
	combout => \led|LED[3]~8_combout\);

-- Location: LCCOMB_X15_Y4_N8
\led|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|WideOr6~0_combout\ = (\led|LED[2]~6_combout\ & (!\led|LED[1]~4_combout\ & (\led|LED[0]~2_combout\ $ (!\led|LED[3]~8_combout\)))) # (!\led|LED[2]~6_combout\ & (\led|LED[0]~2_combout\ & (\led|LED[1]~4_combout\ $ (!\led|LED[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led|LED[1]~4_combout\,
	datab => \led|LED[2]~6_combout\,
	datac => \led|LED[0]~2_combout\,
	datad => \led|LED[3]~8_combout\,
	combout => \led|WideOr6~0_combout\);

-- Location: LCCOMB_X15_Y4_N14
\led|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|WideOr5~0_combout\ = (\led|LED[1]~4_combout\ & ((\led|LED[0]~2_combout\ & ((\led|LED[3]~8_combout\))) # (!\led|LED[0]~2_combout\ & (\led|LED[2]~6_combout\)))) # (!\led|LED[1]~4_combout\ & (\led|LED[2]~6_combout\ & (\led|LED[0]~2_combout\ $ 
-- (\led|LED[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led|LED[1]~4_combout\,
	datab => \led|LED[2]~6_combout\,
	datac => \led|LED[0]~2_combout\,
	datad => \led|LED[3]~8_combout\,
	combout => \led|WideOr5~0_combout\);

-- Location: LCCOMB_X15_Y4_N12
\led|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|WideOr4~0_combout\ = (\led|LED[2]~6_combout\ & (\led|LED[3]~8_combout\ & ((\led|LED[1]~4_combout\) # (!\led|LED[0]~2_combout\)))) # (!\led|LED[2]~6_combout\ & (\led|LED[1]~4_combout\ & (!\led|LED[0]~2_combout\ & !\led|LED[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led|LED[1]~4_combout\,
	datab => \led|LED[2]~6_combout\,
	datac => \led|LED[0]~2_combout\,
	datad => \led|LED[3]~8_combout\,
	combout => \led|WideOr4~0_combout\);

-- Location: LCCOMB_X15_Y4_N30
\led|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|WideOr3~0_combout\ = (\led|LED[1]~4_combout\ & ((\led|LED[2]~6_combout\ & (\led|LED[0]~2_combout\)) # (!\led|LED[2]~6_combout\ & (!\led|LED[0]~2_combout\ & \led|LED[3]~8_combout\)))) # (!\led|LED[1]~4_combout\ & (!\led|LED[3]~8_combout\ & 
-- (\led|LED[2]~6_combout\ $ (\led|LED[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led|LED[1]~4_combout\,
	datab => \led|LED[2]~6_combout\,
	datac => \led|LED[0]~2_combout\,
	datad => \led|LED[3]~8_combout\,
	combout => \led|WideOr3~0_combout\);

-- Location: LCCOMB_X15_Y4_N28
\led|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|WideOr2~0_combout\ = (\led|LED[1]~4_combout\ & (((\led|LED[0]~2_combout\ & !\led|LED[3]~8_combout\)))) # (!\led|LED[1]~4_combout\ & ((\led|LED[2]~6_combout\ & ((!\led|LED[3]~8_combout\))) # (!\led|LED[2]~6_combout\ & (\led|LED[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led|LED[1]~4_combout\,
	datab => \led|LED[2]~6_combout\,
	datac => \led|LED[0]~2_combout\,
	datad => \led|LED[3]~8_combout\,
	combout => \led|WideOr2~0_combout\);

-- Location: LCCOMB_X15_Y4_N22
\led|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|WideOr1~0_combout\ = (\led|LED[1]~4_combout\ & (!\led|LED[3]~8_combout\ & ((\led|LED[0]~2_combout\) # (!\led|LED[2]~6_combout\)))) # (!\led|LED[1]~4_combout\ & (\led|LED[0]~2_combout\ & (\led|LED[2]~6_combout\ $ (!\led|LED[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led|LED[1]~4_combout\,
	datab => \led|LED[2]~6_combout\,
	datac => \led|LED[0]~2_combout\,
	datad => \led|LED[3]~8_combout\,
	combout => \led|WideOr1~0_combout\);

-- Location: LCCOMB_X15_Y4_N16
\led|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led|WideOr0~0_combout\ = (\led|LED[0]~2_combout\ & ((\led|LED[3]~8_combout\) # (\led|LED[1]~4_combout\ $ (\led|LED[2]~6_combout\)))) # (!\led|LED[0]~2_combout\ & ((\led|LED[1]~4_combout\) # (\led|LED[2]~6_combout\ $ (\led|LED[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led|LED[1]~4_combout\,
	datab => \led|LED[2]~6_combout\,
	datac => \led|LED[0]~2_combout\,
	datad => \led|LED[3]~8_combout\,
	combout => \led|WideOr0~0_combout\);

-- Location: IOIBUF_X51_Y0_N1
\sw_brick~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_brick,
	o => \sw_brick~input_o\);

ww_col(0) <= \col[0]~output_o\;

ww_col(1) <= \col[1]~output_o\;

ww_col(2) <= \col[2]~output_o\;

ww_col(3) <= \col[3]~output_o\;

ww_vga_r(0) <= \vga_r[0]~output_o\;

ww_vga_r(1) <= \vga_r[1]~output_o\;

ww_vga_r(2) <= \vga_r[2]~output_o\;

ww_vga_r(3) <= \vga_r[3]~output_o\;

ww_vga_g(0) <= \vga_g[0]~output_o\;

ww_vga_g(1) <= \vga_g[1]~output_o\;

ww_vga_g(2) <= \vga_g[2]~output_o\;

ww_vga_g(3) <= \vga_g[3]~output_o\;

ww_vga_b(0) <= \vga_b[0]~output_o\;

ww_vga_b(1) <= \vga_b[1]~output_o\;

ww_vga_b(2) <= \vga_b[2]~output_o\;

ww_vga_b(3) <= \vga_b[3]~output_o\;

ww_hsync <= \hsync~output_o\;

ww_vsync <= \vsync~output_o\;

ww_LEDOut(0) <= \LEDOut[0]~output_o\;

ww_LEDOut(1) <= \LEDOut[1]~output_o\;

ww_LEDOut(2) <= \LEDOut[2]~output_o\;

ww_LEDOut(3) <= \LEDOut[3]~output_o\;

ww_LEDOut(4) <= \LEDOut[4]~output_o\;

ww_LEDOut(5) <= \LEDOut[5]~output_o\;

ww_LEDOut(6) <= \LEDOut[6]~output_o\;

ww_LEDOut(7) <= \LEDOut[7]~output_o\;

ww_DigitSelect(0) <= \DigitSelect[0]~output_o\;

ww_DigitSelect(1) <= \DigitSelect[1]~output_o\;

ww_DigitSelect(2) <= \DigitSelect[2]~output_o\;

ww_Light(0) <= \Light[0]~output_o\;

ww_Light(1) <= \Light[1]~output_o\;

ww_Light(2) <= \Light[2]~output_o\;

ww_Light(3) <= \Light[3]~output_o\;

ww_Light(4) <= \Light[4]~output_o\;

ww_Light(5) <= \Light[5]~output_o\;

ww_Light(6) <= \Light[6]~output_o\;

ww_Light(7) <= \Light[7]~output_o\;
END structure;


