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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/04/2018 01:09:23"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Upsampling IS
    PORT (
	sampleIn : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	start : IN std_logic;
	reset : IN std_logic;
	newLine : OUT std_logic;
	valido : OUT std_logic;
	sampleOut1 : OUT std_logic_vector(7 DOWNTO 0);
	sampleOut2 : OUT std_logic_vector(7 DOWNTO 0)
	);
END Upsampling;

-- Design Ports Information
-- newLine	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valido	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut1[0]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut1[1]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut1[2]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut1[3]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut1[4]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut1[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut1[6]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut1[7]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut2[0]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut2[1]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut2[2]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut2[3]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut2[4]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut2[5]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut2[6]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sampleOut2[7]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- start	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sampleIn[0]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sampleIn[1]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sampleIn[2]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sampleIn[3]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sampleIn[4]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sampleIn[5]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sampleIn[6]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sampleIn[7]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Upsampling IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sampleIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_newLine : std_logic;
SIGNAL ww_valido : std_logic;
SIGNAL ww_sampleOut1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sampleOut2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegBank|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegBank|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RegBank|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegBank|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegBank|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RegBank|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Interpolador1|Add6~0_combout\ : std_logic;
SIGNAL \Interpolador1|Add6~2_combout\ : std_logic;
SIGNAL \Interpolador1|Add6~4_combout\ : std_logic;
SIGNAL \Interpolador1|Add7~2_combout\ : std_logic;
SIGNAL \Interpolador1|Add7~4_combout\ : std_logic;
SIGNAL \Interpolador1|Add7~6_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~0_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~2_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~2_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~4_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~6_combout\ : std_logic;
SIGNAL \Interpolador1|Add6~14_combout\ : std_logic;
SIGNAL \Interpolador1|Add7~16_combout\ : std_logic;
SIGNAL \Interpolador1|Add7~22_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~12_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~22_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~16_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~26_combout\ : std_logic;
SIGNAL \Interpolador1|aux1[10]~31_combout\ : std_logic;
SIGNAL \Interpolador1|II[4]~13_combout\ : std_logic;
SIGNAL \Interpolador1|II[5]~15_combout\ : std_logic;
SIGNAL \Interpolador1|FF[2]~9_combout\ : std_logic;
SIGNAL \Interpolador1|FF[5]~15_combout\ : std_logic;
SIGNAL \Interpolador1|GG[4]~9_combout\ : std_logic;
SIGNAL \Interpolador1|GG[5]~11_combout\ : std_logic;
SIGNAL \Interpolador1|FF[7]~19_combout\ : std_logic;
SIGNAL \Interpolador1|GG[6]~13_combout\ : std_logic;
SIGNAL \Interpolador1|GG[8]~17_combout\ : std_logic;
SIGNAL \Interpolador1|GG[9]~19_combout\ : std_logic;
SIGNAL \Interpolador1|GG[10]~21_combout\ : std_logic;
SIGNAL \Interpolador1|GG[11]~23_combout\ : std_logic;
SIGNAL \Interpolador1|HH[6]~13_combout\ : std_logic;
SIGNAL \Interpolador1|HH[7]~15_combout\ : std_logic;
SIGNAL \Interpolador1|HH[8]~17_combout\ : std_logic;
SIGNAL \Interpolador1|HH[9]~19_combout\ : std_logic;
SIGNAL \Interpolador1|HH[10]~22\ : std_logic;
SIGNAL \Interpolador1|HH[11]~23_combout\ : std_logic;
SIGNAL \Interpolador1|HH[11]~24\ : std_logic;
SIGNAL \Interpolador1|HH[12]~25_combout\ : std_logic;
SIGNAL \Interpolador1|II[6]~17_combout\ : std_logic;
SIGNAL \Interpolador1|II[7]~19_combout\ : std_logic;
SIGNAL \Interpolador1|II[8]~22\ : std_logic;
SIGNAL \Interpolador1|II[9]~23_combout\ : std_logic;
SIGNAL \Interpolador1|II[9]~24\ : std_logic;
SIGNAL \Interpolador1|II[10]~25_combout\ : std_logic;
SIGNAL \Interpolador1|inicioImagem~regout\ : std_logic;
SIGNAL \Interpolador1|inicioImagem~0_combout\ : std_logic;
SIGNAL \Interpolador1|auxInicioImagem~0_combout\ : std_logic;
SIGNAL \Interpolador1|auxTrocaLinha~0_combout\ : std_logic;
SIGNAL \Interpolador1|auxTrocaLinha~5_combout\ : std_logic;
SIGNAL \Interpolador1|auxTrocaLinha~7_combout\ : std_logic;
SIGNAL \Interpolador1|LessThan1~1_combout\ : std_logic;
SIGNAL \auxInicio~combout\ : std_logic;
SIGNAL \Passador1|saida3[7]~feeder_combout\ : std_logic;
SIGNAL \Passador1|saida4[7]~feeder_combout\ : std_logic;
SIGNAL \Passador1|saida5[6]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|JJ[7]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|JJ[6]~feeder_combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \proximo_estado~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \estado_atual~regout\ : std_logic;
SIGNAL \Interpolador1|Add0~0_combout\ : std_logic;
SIGNAL \Interpolador1|Add0~1\ : std_logic;
SIGNAL \Interpolador1|Add0~2_combout\ : std_logic;
SIGNAL \Interpolador1|auxTrocaLinha~1_combout\ : std_logic;
SIGNAL \Interpolador1|processing~0_combout\ : std_logic;
SIGNAL \Interpolador1|processing~regout\ : std_logic;
SIGNAL \Interpolador1|auxInicioImagem[4]~1_combout\ : std_logic;
SIGNAL \Interpolador1|Add1~1\ : std_logic;
SIGNAL \Interpolador1|Add1~2_combout\ : std_logic;
SIGNAL \Interpolador1|auxInicioImagem[1]~3_combout\ : std_logic;
SIGNAL \Interpolador1|Add1~0_combout\ : std_logic;
SIGNAL \Interpolador1|auxInicioImagem[0]~2_combout\ : std_logic;
SIGNAL \Interpolador1|Equal0~0_combout\ : std_logic;
SIGNAL \Interpolador1|Add1~3\ : std_logic;
SIGNAL \Interpolador1|Add1~4_combout\ : std_logic;
SIGNAL \Interpolador1|auxInicioImagem[2]~4_combout\ : std_logic;
SIGNAL \Interpolador1|Add1~5\ : std_logic;
SIGNAL \Interpolador1|Add1~6_combout\ : std_logic;
SIGNAL \Interpolador1|auxInicioImagem[3]~5_combout\ : std_logic;
SIGNAL \Interpolador1|Add1~7\ : std_logic;
SIGNAL \Interpolador1|Add1~8_combout\ : std_logic;
SIGNAL \Interpolador1|auxInicioImagem[4]~6_combout\ : std_logic;
SIGNAL \Interpolador1|Equal0~1_combout\ : std_logic;
SIGNAL \Interpolador1|EE[0]~0_combout\ : std_logic;
SIGNAL \Interpolador1|Add0~3\ : std_logic;
SIGNAL \Interpolador1|Add0~5\ : std_logic;
SIGNAL \Interpolador1|Add0~6_combout\ : std_logic;
SIGNAL \Interpolador1|auxTrocaLinha~3_combout\ : std_logic;
SIGNAL \Interpolador1|Add0~7\ : std_logic;
SIGNAL \Interpolador1|Add0~8_combout\ : std_logic;
SIGNAL \Interpolador1|auxTrocaLinha~4_combout\ : std_logic;
SIGNAL \Interpolador1|Add0~9\ : std_logic;
SIGNAL \Interpolador1|Add0~10_combout\ : std_logic;
SIGNAL \Interpolador1|Add0~11\ : std_logic;
SIGNAL \Interpolador1|Add0~12_combout\ : std_logic;
SIGNAL \Interpolador1|auxTrocaLinha~6_combout\ : std_logic;
SIGNAL \Interpolador1|Add0~13\ : std_logic;
SIGNAL \Interpolador1|Add0~14_combout\ : std_logic;
SIGNAL \Interpolador1|Equal1~1_combout\ : std_logic;
SIGNAL \Interpolador1|auxTrocaLinha~8_combout\ : std_logic;
SIGNAL \Interpolador1|Add0~15\ : std_logic;
SIGNAL \Interpolador1|Add0~16_combout\ : std_logic;
SIGNAL \Interpolador1|auxTrocaLinha~2_combout\ : std_logic;
SIGNAL \Interpolador1|Add0~4_combout\ : std_logic;
SIGNAL \Interpolador1|Equal1~0_combout\ : std_logic;
SIGNAL \Interpolador1|trocaLinha~0_combout\ : std_logic;
SIGNAL \Interpolador1|trocaLinha~regout\ : std_logic;
SIGNAL \newLine~0_combout\ : std_logic;
SIGNAL \Interpolador1|valido~regout\ : std_logic;
SIGNAL \valido~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[0]~10_combout\ : std_logic;
SIGNAL \Interpolador1|Add1~9\ : std_logic;
SIGNAL \Interpolador1|Add1~10_combout\ : std_logic;
SIGNAL \Interpolador1|auxInicioImagem[5]~7_combout\ : std_logic;
SIGNAL \Interpolador1|Add1~11\ : std_logic;
SIGNAL \Interpolador1|Add1~12_combout\ : std_logic;
SIGNAL \Interpolador1|auxInicioImagem[6]~8_combout\ : std_logic;
SIGNAL \Interpolador1|Add1~13\ : std_logic;
SIGNAL \Interpolador1|Add1~14_combout\ : std_logic;
SIGNAL \Interpolador1|auxInicioImagem[7]~9_combout\ : std_logic;
SIGNAL \Interpolador1|Add1~15\ : std_logic;
SIGNAL \Interpolador1|Add1~16_combout\ : std_logic;
SIGNAL \Interpolador1|auxInicioImagem[8]~10_combout\ : std_logic;
SIGNAL \Interpolador1|Equal0~2_combout\ : std_logic;
SIGNAL \Interpolador1|Equal0~3_combout\ : std_logic;
SIGNAL \Interpolador1|endereco[0]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[0]~11\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[1]~12_combout\ : std_logic;
SIGNAL \Interpolador1|endereco[1]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[1]~13\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[2]~14_combout\ : std_logic;
SIGNAL \Interpolador1|endereco[2]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[2]~15\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[3]~16_combout\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[3]~17\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[4]~18_combout\ : std_logic;
SIGNAL \Interpolador1|endereco[4]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[4]~19\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[5]~20_combout\ : std_logic;
SIGNAL \Interpolador1|endereco[5]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[5]~21\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[6]~22_combout\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[6]~23\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[7]~24_combout\ : std_logic;
SIGNAL \Interpolador1|endereco[7]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[7]~25\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[8]~26_combout\ : std_logic;
SIGNAL \Interpolador1|endereco[8]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[8]~27\ : std_logic;
SIGNAL \Interpolador1|auxEndereco[9]~28_combout\ : std_logic;
SIGNAL \sampleOut1~0_combout\ : std_logic;
SIGNAL \Interpolador1|EE[1]~feeder_combout\ : std_logic;
SIGNAL \sampleOut1~1_combout\ : std_logic;
SIGNAL \sampleOut1~2_combout\ : std_logic;
SIGNAL \sampleOut1~3_combout\ : std_logic;
SIGNAL \Passador1|saida0[4]~feeder_combout\ : std_logic;
SIGNAL \sampleOut1~4_combout\ : std_logic;
SIGNAL \sampleOut1~5_combout\ : std_logic;
SIGNAL \sampleOut1~6_combout\ : std_logic;
SIGNAL \Passador1|saida0[7]~feeder_combout\ : std_logic;
SIGNAL \sampleOut1~7_combout\ : std_logic;
SIGNAL \Passador1|saida1[4]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|FF[2]~10\ : std_logic;
SIGNAL \Interpolador1|FF[3]~12\ : std_logic;
SIGNAL \Interpolador1|FF[4]~14\ : std_logic;
SIGNAL \Interpolador1|FF[5]~16\ : std_logic;
SIGNAL \Interpolador1|FF[6]~18\ : std_logic;
SIGNAL \Interpolador1|FF[7]~20\ : std_logic;
SIGNAL \Interpolador1|FF[8]~22\ : std_logic;
SIGNAL \Interpolador1|FF[9]~24\ : std_logic;
SIGNAL \Interpolador1|FF[10]~25_combout\ : std_logic;
SIGNAL \Interpolador1|FF[9]~23_combout\ : std_logic;
SIGNAL \Interpolador1|FF[8]~21_combout\ : std_logic;
SIGNAL \Interpolador1|FF[6]~17_combout\ : std_logic;
SIGNAL \Interpolador1|FF[4]~13_combout\ : std_logic;
SIGNAL \Interpolador1|FF[3]~11_combout\ : std_logic;
SIGNAL \Interpolador1|Add6~1\ : std_logic;
SIGNAL \Interpolador1|Add6~3\ : std_logic;
SIGNAL \Interpolador1|Add6~5\ : std_logic;
SIGNAL \Interpolador1|Add6~7\ : std_logic;
SIGNAL \Interpolador1|Add6~9\ : std_logic;
SIGNAL \Interpolador1|Add6~11\ : std_logic;
SIGNAL \Interpolador1|Add6~13\ : std_logic;
SIGNAL \Interpolador1|Add6~15\ : std_logic;
SIGNAL \Interpolador1|Add6~17\ : std_logic;
SIGNAL \Interpolador1|Add6~19\ : std_logic;
SIGNAL \Interpolador1|Add6~21\ : std_logic;
SIGNAL \Interpolador1|Add6~23\ : std_logic;
SIGNAL \Interpolador1|Add6~24_combout\ : std_logic;
SIGNAL \Passador1|saida1[7]~feeder_combout\ : std_logic;
SIGNAL \Passador1|saida2[7]~feeder_combout\ : std_logic;
SIGNAL \Passador1|saida2[4]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|GG[4]~10\ : std_logic;
SIGNAL \Interpolador1|GG[5]~12\ : std_logic;
SIGNAL \Interpolador1|GG[6]~14\ : std_logic;
SIGNAL \Interpolador1|GG[7]~16\ : std_logic;
SIGNAL \Interpolador1|GG[8]~18\ : std_logic;
SIGNAL \Interpolador1|GG[9]~20\ : std_logic;
SIGNAL \Interpolador1|GG[10]~22\ : std_logic;
SIGNAL \Interpolador1|GG[11]~24\ : std_logic;
SIGNAL \Interpolador1|GG[12]~25_combout\ : std_logic;
SIGNAL \Interpolador1|Add6~22_combout\ : std_logic;
SIGNAL \Interpolador1|Add6~20_combout\ : std_logic;
SIGNAL \Interpolador1|Add6~18_combout\ : std_logic;
SIGNAL \Interpolador1|Add6~16_combout\ : std_logic;
SIGNAL \Interpolador1|GG[7]~15_combout\ : std_logic;
SIGNAL \Interpolador1|Add6~12_combout\ : std_logic;
SIGNAL \Interpolador1|Add6~10_combout\ : std_logic;
SIGNAL \Interpolador1|Add6~8_combout\ : std_logic;
SIGNAL \Interpolador1|Add6~6_combout\ : std_logic;
SIGNAL \Interpolador1|Add7~1\ : std_logic;
SIGNAL \Interpolador1|Add7~3\ : std_logic;
SIGNAL \Interpolador1|Add7~5\ : std_logic;
SIGNAL \Interpolador1|Add7~7\ : std_logic;
SIGNAL \Interpolador1|Add7~9\ : std_logic;
SIGNAL \Interpolador1|Add7~11\ : std_logic;
SIGNAL \Interpolador1|Add7~13\ : std_logic;
SIGNAL \Interpolador1|Add7~15\ : std_logic;
SIGNAL \Interpolador1|Add7~17\ : std_logic;
SIGNAL \Interpolador1|Add7~19\ : std_logic;
SIGNAL \Interpolador1|Add7~21\ : std_logic;
SIGNAL \Interpolador1|Add7~23\ : std_logic;
SIGNAL \Interpolador1|Add7~24_combout\ : std_logic;
SIGNAL \Interpolador1|Add7~20_combout\ : std_logic;
SIGNAL \Interpolador1|Add7~18_combout\ : std_logic;
SIGNAL \Passador1|saida2[5]~feeder_combout\ : std_logic;
SIGNAL \Passador1|saida3[5]~feeder_combout\ : std_logic;
SIGNAL \Passador1|saida3[4]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|HH[4]~10\ : std_logic;
SIGNAL \Interpolador1|HH[5]~12\ : std_logic;
SIGNAL \Interpolador1|HH[6]~14\ : std_logic;
SIGNAL \Interpolador1|HH[7]~16\ : std_logic;
SIGNAL \Interpolador1|HH[8]~18\ : std_logic;
SIGNAL \Interpolador1|HH[9]~20\ : std_logic;
SIGNAL \Interpolador1|HH[10]~21_combout\ : std_logic;
SIGNAL \Interpolador1|Add7~14_combout\ : std_logic;
SIGNAL \Interpolador1|Add7~12_combout\ : std_logic;
SIGNAL \Interpolador1|Add7~10_combout\ : std_logic;
SIGNAL \Interpolador1|Add7~8_combout\ : std_logic;
SIGNAL \Interpolador1|HH[5]~11_combout\ : std_logic;
SIGNAL \Interpolador1|HH[4]~9_combout\ : std_logic;
SIGNAL \Interpolador1|Add7~0_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~1\ : std_logic;
SIGNAL \Interpolador1|Add8~3\ : std_logic;
SIGNAL \Interpolador1|Add8~5\ : std_logic;
SIGNAL \Interpolador1|Add8~7\ : std_logic;
SIGNAL \Interpolador1|Add8~9\ : std_logic;
SIGNAL \Interpolador1|Add8~11\ : std_logic;
SIGNAL \Interpolador1|Add8~13\ : std_logic;
SIGNAL \Interpolador1|Add8~15\ : std_logic;
SIGNAL \Interpolador1|Add8~17\ : std_logic;
SIGNAL \Interpolador1|Add8~19\ : std_logic;
SIGNAL \Interpolador1|Add8~21\ : std_logic;
SIGNAL \Interpolador1|Add8~23\ : std_logic;
SIGNAL \Interpolador1|Add8~25\ : std_logic;
SIGNAL \Interpolador1|Add8~26_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~24_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~20_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~18_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~16_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~14_combout\ : std_logic;
SIGNAL \Passador1|saida2[6]~feeder_combout\ : std_logic;
SIGNAL \Passador1|saida4[6]~feeder_combout\ : std_logic;
SIGNAL \Passador1|saida3[3]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|II[2]~10\ : std_logic;
SIGNAL \Interpolador1|II[3]~12\ : std_logic;
SIGNAL \Interpolador1|II[4]~14\ : std_logic;
SIGNAL \Interpolador1|II[5]~16\ : std_logic;
SIGNAL \Interpolador1|II[6]~18\ : std_logic;
SIGNAL \Interpolador1|II[7]~20\ : std_logic;
SIGNAL \Interpolador1|II[8]~21_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~10_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~8_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~6_combout\ : std_logic;
SIGNAL \Interpolador1|Add8~4_combout\ : std_logic;
SIGNAL \Interpolador1|II[3]~11_combout\ : std_logic;
SIGNAL \Interpolador1|II[2]~9_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~1\ : std_logic;
SIGNAL \Interpolador1|Add9~3\ : std_logic;
SIGNAL \Interpolador1|Add9~5\ : std_logic;
SIGNAL \Interpolador1|Add9~7\ : std_logic;
SIGNAL \Interpolador1|Add9~9\ : std_logic;
SIGNAL \Interpolador1|Add9~11\ : std_logic;
SIGNAL \Interpolador1|Add9~13\ : std_logic;
SIGNAL \Interpolador1|Add9~15\ : std_logic;
SIGNAL \Interpolador1|Add9~17\ : std_logic;
SIGNAL \Interpolador1|Add9~19\ : std_logic;
SIGNAL \Interpolador1|Add9~21\ : std_logic;
SIGNAL \Interpolador1|Add9~23\ : std_logic;
SIGNAL \Interpolador1|Add9~25\ : std_logic;
SIGNAL \Interpolador1|Add9~27\ : std_logic;
SIGNAL \Interpolador1|Add9~29\ : std_logic;
SIGNAL \Interpolador1|Add9~30_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~28_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~24_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~22_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~20_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~18_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~14_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~12_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~10_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~8_combout\ : std_logic;
SIGNAL \Passador1|saida5[3]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|Add9~0_combout\ : std_logic;
SIGNAL \Interpolador1|aux1[5]~12_cout\ : std_logic;
SIGNAL \Interpolador1|aux1[5]~14_cout\ : std_logic;
SIGNAL \Interpolador1|aux1[5]~16_cout\ : std_logic;
SIGNAL \Interpolador1|aux1[5]~18_cout\ : std_logic;
SIGNAL \Interpolador1|aux1[5]~20_cout\ : std_logic;
SIGNAL \Interpolador1|aux1[5]~22\ : std_logic;
SIGNAL \Interpolador1|aux1[6]~24\ : std_logic;
SIGNAL \Interpolador1|aux1[7]~26\ : std_logic;
SIGNAL \Interpolador1|aux1[8]~28\ : std_logic;
SIGNAL \Interpolador1|aux1[9]~30\ : std_logic;
SIGNAL \Interpolador1|aux1[10]~32\ : std_logic;
SIGNAL \Interpolador1|aux1[11]~34\ : std_logic;
SIGNAL \Interpolador1|aux1[12]~36\ : std_logic;
SIGNAL \Interpolador1|aux1[13]~38\ : std_logic;
SIGNAL \Interpolador1|aux1[14]~40\ : std_logic;
SIGNAL \Interpolador1|aux1[15]~41_combout\ : std_logic;
SIGNAL \Interpolador1|aux1[13]~37_combout\ : std_logic;
SIGNAL \Interpolador1|aux1[14]~39_combout\ : std_logic;
SIGNAL \Interpolador1|aux3[7]~0_combout\ : std_logic;
SIGNAL \Interpolador1|aux1[7]~25_combout\ : std_logic;
SIGNAL \Interpolador1|aux2[2]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|aux1[8]~27_combout\ : std_logic;
SIGNAL \Interpolador1|aux1[6]~23_combout\ : std_logic;
SIGNAL \Interpolador1|aux2[1]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|LessThan1~0_combout\ : std_logic;
SIGNAL \Interpolador1|aux3[7]~1_combout\ : std_logic;
SIGNAL \Interpolador1|aux1[5]~21_combout\ : std_logic;
SIGNAL \Interpolador1|aux2[0]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|aux3~2_combout\ : std_logic;
SIGNAL \sampleOut2~0_combout\ : std_logic;
SIGNAL \Interpolador1|aux3~3_combout\ : std_logic;
SIGNAL \sampleOut2~1_combout\ : std_logic;
SIGNAL \Interpolador1|aux3~4_combout\ : std_logic;
SIGNAL \sampleOut2~2_combout\ : std_logic;
SIGNAL \Interpolador1|aux3~5_combout\ : std_logic;
SIGNAL \sampleOut2~3_combout\ : std_logic;
SIGNAL \Interpolador1|aux1[9]~29_combout\ : std_logic;
SIGNAL \Interpolador1|aux2[4]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|aux3~6_combout\ : std_logic;
SIGNAL \sampleOut2~4_combout\ : std_logic;
SIGNAL \Interpolador1|aux3~7_combout\ : std_logic;
SIGNAL \sampleOut2~5_combout\ : std_logic;
SIGNAL \Interpolador1|aux1[11]~33_combout\ : std_logic;
SIGNAL \Interpolador1|aux2[6]~feeder_combout\ : std_logic;
SIGNAL \Interpolador1|aux3~8_combout\ : std_logic;
SIGNAL \sampleOut2~6_combout\ : std_logic;
SIGNAL \Interpolador1|aux1[12]~35_combout\ : std_logic;
SIGNAL \Interpolador1|aux3~9_combout\ : std_logic;
SIGNAL \Interpolador1|amostraOUT2[7]~feeder_combout\ : std_logic;
SIGNAL \sampleOut2~7_combout\ : std_logic;
SIGNAL \Interpolador1|endereco\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Interpolador1|auxTrocaLinha\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Interpolador1|auxInicioImagem\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Interpolador1|auxEndereco\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Interpolador1|aux3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Interpolador1|aux2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Interpolador1|aux1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Interpolador1|amostraOUT2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Interpolador1|JJ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Interpolador1|II\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Interpolador1|HH\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Interpolador1|GG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Interpolador1|FF\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Interpolador1|EE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Passador1|saida5\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Passador1|saida4\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Passador1|saida3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Passador1|saida2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Passador1|saida1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Passador1|saida0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sampleIn~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegBank|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Interpolador1|ALT_INV_processing~regout\ : std_logic;

BEGIN

ww_sampleIn <= sampleIn;
ww_clk <= clk;
ww_start <= start;
ww_reset <= reset;
newLine <= ww_newLine;
valido <= ww_valido;
sampleOut1 <= ww_sampleOut1;
sampleOut2 <= ww_sampleOut2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RegBank|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\sampleIn~combout\(3) & \sampleIn~combout\(2) & \sampleIn~combout\(1) & \sampleIn~combout\(0));

\RegBank|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Interpolador1|endereco\(9) & \Interpolador1|endereco\(8) & \Interpolador1|endereco\(7) & \Interpolador1|endereco\(6) & \Interpolador1|endereco\(5) & 
\Interpolador1|endereco\(4) & \Interpolador1|endereco\(3) & \Interpolador1|endereco\(2) & \Interpolador1|endereco\(1) & \Interpolador1|endereco\(0));

\RegBank|altsyncram_component|auto_generated|q_a\(0) <= \RegBank|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RegBank|altsyncram_component|auto_generated|q_a\(1) <= \RegBank|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\RegBank|altsyncram_component|auto_generated|q_a\(2) <= \RegBank|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\RegBank|altsyncram_component|auto_generated|q_a\(3) <= \RegBank|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\RegBank|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\sampleIn~combout\(7) & \sampleIn~combout\(6) & \sampleIn~combout\(5) & \sampleIn~combout\(4));

\RegBank|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\Interpolador1|endereco\(9) & \Interpolador1|endereco\(8) & \Interpolador1|endereco\(7) & \Interpolador1|endereco\(6) & \Interpolador1|endereco\(5) & 
\Interpolador1|endereco\(4) & \Interpolador1|endereco\(3) & \Interpolador1|endereco\(2) & \Interpolador1|endereco\(1) & \Interpolador1|endereco\(0));

\RegBank|altsyncram_component|auto_generated|q_a\(4) <= \RegBank|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\RegBank|altsyncram_component|auto_generated|q_a\(5) <= \RegBank|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\RegBank|altsyncram_component|auto_generated|q_a\(6) <= \RegBank|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\RegBank|altsyncram_component|auto_generated|q_a\(7) <= \RegBank|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\Interpolador1|ALT_INV_processing~regout\ <= NOT \Interpolador1|processing~regout\;

-- Location: LCFF_X5_Y12_N21
\Interpolador1|aux1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux1[10]~31_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux1\(10));

-- Location: LCFF_X4_Y12_N7
\Interpolador1|II[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|II[5]~15_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|II\(5));

-- Location: LCFF_X9_Y12_N13
\Interpolador1|FF[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|FF[5]~15_combout\,
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|FF\(5));

-- Location: LCFF_X9_Y12_N7
\Interpolador1|FF[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|FF[2]~9_combout\,
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|FF\(2));

-- Location: LCCOMB_X9_Y12_N2
\Interpolador1|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add6~0_combout\ = (\Interpolador1|FF\(0) & (\Interpolador1|EE\(0) $ (VCC))) # (!\Interpolador1|FF\(0) & ((\Interpolador1|EE\(0)) # (GND)))
-- \Interpolador1|Add6~1\ = CARRY((\Interpolador1|EE\(0)) # (!\Interpolador1|FF\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|FF\(0),
	datab => \Interpolador1|EE\(0),
	datad => VCC,
	combout => \Interpolador1|Add6~0_combout\,
	cout => \Interpolador1|Add6~1\);

-- Location: LCCOMB_X9_Y12_N4
\Interpolador1|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add6~2_combout\ = (\Interpolador1|EE\(1) & ((\Interpolador1|FF\(1) & (!\Interpolador1|Add6~1\)) # (!\Interpolador1|FF\(1) & (\Interpolador1|Add6~1\ & VCC)))) # (!\Interpolador1|EE\(1) & ((\Interpolador1|FF\(1) & ((\Interpolador1|Add6~1\) # 
-- (GND))) # (!\Interpolador1|FF\(1) & (!\Interpolador1|Add6~1\))))
-- \Interpolador1|Add6~3\ = CARRY((\Interpolador1|EE\(1) & (\Interpolador1|FF\(1) & !\Interpolador1|Add6~1\)) # (!\Interpolador1|EE\(1) & ((\Interpolador1|FF\(1)) # (!\Interpolador1|Add6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|EE\(1),
	datab => \Interpolador1|FF\(1),
	datad => VCC,
	cin => \Interpolador1|Add6~1\,
	combout => \Interpolador1|Add6~2_combout\,
	cout => \Interpolador1|Add6~3\);

-- Location: LCCOMB_X9_Y12_N6
\Interpolador1|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add6~4_combout\ = ((\Interpolador1|FF\(2) $ (\Interpolador1|EE\(2) $ (\Interpolador1|Add6~3\)))) # (GND)
-- \Interpolador1|Add6~5\ = CARRY((\Interpolador1|FF\(2) & (\Interpolador1|EE\(2) & !\Interpolador1|Add6~3\)) # (!\Interpolador1|FF\(2) & ((\Interpolador1|EE\(2)) # (!\Interpolador1|Add6~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|FF\(2),
	datab => \Interpolador1|EE\(2),
	datad => VCC,
	cin => \Interpolador1|Add6~3\,
	combout => \Interpolador1|Add6~4_combout\,
	cout => \Interpolador1|Add6~5\);

-- Location: LCFF_X8_Y11_N3
\Interpolador1|GG[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|GG[5]~11_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|GG\(5));

-- Location: LCFF_X8_Y12_N31
\Interpolador1|GG[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|GG[4]~9_combout\,
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|GG\(4));

-- Location: LCCOMB_X8_Y12_N2
\Interpolador1|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add7~2_combout\ = (\Interpolador1|GG\(3) & ((\Interpolador1|Add6~6_combout\ & (\Interpolador1|Add7~1\ & VCC)) # (!\Interpolador1|Add6~6_combout\ & (!\Interpolador1|Add7~1\)))) # (!\Interpolador1|GG\(3) & ((\Interpolador1|Add6~6_combout\ & 
-- (!\Interpolador1|Add7~1\)) # (!\Interpolador1|Add6~6_combout\ & ((\Interpolador1|Add7~1\) # (GND)))))
-- \Interpolador1|Add7~3\ = CARRY((\Interpolador1|GG\(3) & (!\Interpolador1|Add6~6_combout\ & !\Interpolador1|Add7~1\)) # (!\Interpolador1|GG\(3) & ((!\Interpolador1|Add7~1\) # (!\Interpolador1|Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|GG\(3),
	datab => \Interpolador1|Add6~6_combout\,
	datad => VCC,
	cin => \Interpolador1|Add7~1\,
	combout => \Interpolador1|Add7~2_combout\,
	cout => \Interpolador1|Add7~3\);

-- Location: LCCOMB_X8_Y12_N4
\Interpolador1|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add7~4_combout\ = ((\Interpolador1|GG\(4) $ (\Interpolador1|Add6~8_combout\ $ (!\Interpolador1|Add7~3\)))) # (GND)
-- \Interpolador1|Add7~5\ = CARRY((\Interpolador1|GG\(4) & ((\Interpolador1|Add6~8_combout\) # (!\Interpolador1|Add7~3\))) # (!\Interpolador1|GG\(4) & (\Interpolador1|Add6~8_combout\ & !\Interpolador1|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|GG\(4),
	datab => \Interpolador1|Add6~8_combout\,
	datad => VCC,
	cin => \Interpolador1|Add7~3\,
	combout => \Interpolador1|Add7~4_combout\,
	cout => \Interpolador1|Add7~5\);

-- Location: LCCOMB_X8_Y12_N6
\Interpolador1|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add7~6_combout\ = (\Interpolador1|GG\(5) & ((\Interpolador1|Add6~10_combout\ & (\Interpolador1|Add7~5\ & VCC)) # (!\Interpolador1|Add6~10_combout\ & (!\Interpolador1|Add7~5\)))) # (!\Interpolador1|GG\(5) & ((\Interpolador1|Add6~10_combout\ 
-- & (!\Interpolador1|Add7~5\)) # (!\Interpolador1|Add6~10_combout\ & ((\Interpolador1|Add7~5\) # (GND)))))
-- \Interpolador1|Add7~7\ = CARRY((\Interpolador1|GG\(5) & (!\Interpolador1|Add6~10_combout\ & !\Interpolador1|Add7~5\)) # (!\Interpolador1|GG\(5) & ((!\Interpolador1|Add7~5\) # (!\Interpolador1|Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|GG\(5),
	datab => \Interpolador1|Add6~10_combout\,
	datad => VCC,
	cin => \Interpolador1|Add7~5\,
	combout => \Interpolador1|Add7~6_combout\,
	cout => \Interpolador1|Add7~7\);

-- Location: LCCOMB_X7_Y12_N4
\Interpolador1|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~0_combout\ = (\Interpolador1|HH\(2) & (\Interpolador1|Add7~0_combout\ $ (VCC))) # (!\Interpolador1|HH\(2) & (\Interpolador1|Add7~0_combout\ & VCC))
-- \Interpolador1|Add8~1\ = CARRY((\Interpolador1|HH\(2) & \Interpolador1|Add7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|HH\(2),
	datab => \Interpolador1|Add7~0_combout\,
	datad => VCC,
	combout => \Interpolador1|Add8~0_combout\,
	cout => \Interpolador1|Add8~1\);

-- Location: LCCOMB_X7_Y12_N6
\Interpolador1|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~2_combout\ = (\Interpolador1|Add7~2_combout\ & ((\Interpolador1|HH\(3) & (\Interpolador1|Add8~1\ & VCC)) # (!\Interpolador1|HH\(3) & (!\Interpolador1|Add8~1\)))) # (!\Interpolador1|Add7~2_combout\ & ((\Interpolador1|HH\(3) & 
-- (!\Interpolador1|Add8~1\)) # (!\Interpolador1|HH\(3) & ((\Interpolador1|Add8~1\) # (GND)))))
-- \Interpolador1|Add8~3\ = CARRY((\Interpolador1|Add7~2_combout\ & (!\Interpolador1|HH\(3) & !\Interpolador1|Add8~1\)) # (!\Interpolador1|Add7~2_combout\ & ((!\Interpolador1|Add8~1\) # (!\Interpolador1|HH\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add7~2_combout\,
	datab => \Interpolador1|HH\(3),
	datad => VCC,
	cin => \Interpolador1|Add8~1\,
	combout => \Interpolador1|Add8~2_combout\,
	cout => \Interpolador1|Add8~3\);

-- Location: LCFF_X4_Y12_N5
\Interpolador1|II[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|II[4]~13_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|II\(4));

-- Location: LCCOMB_X6_Y12_N2
\Interpolador1|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~2_combout\ = (\Interpolador1|Add6~2_combout\ & ((\Interpolador1|II\(1) & (!\Interpolador1|Add9~1\)) # (!\Interpolador1|II\(1) & (\Interpolador1|Add9~1\ & VCC)))) # (!\Interpolador1|Add6~2_combout\ & ((\Interpolador1|II\(1) & 
-- ((\Interpolador1|Add9~1\) # (GND))) # (!\Interpolador1|II\(1) & (!\Interpolador1|Add9~1\))))
-- \Interpolador1|Add9~3\ = CARRY((\Interpolador1|Add6~2_combout\ & (\Interpolador1|II\(1) & !\Interpolador1|Add9~1\)) # (!\Interpolador1|Add6~2_combout\ & ((\Interpolador1|II\(1)) # (!\Interpolador1|Add9~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add6~2_combout\,
	datab => \Interpolador1|II\(1),
	datad => VCC,
	cin => \Interpolador1|Add9~1\,
	combout => \Interpolador1|Add9~2_combout\,
	cout => \Interpolador1|Add9~3\);

-- Location: LCCOMB_X6_Y12_N4
\Interpolador1|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~4_combout\ = ((\Interpolador1|Add8~0_combout\ $ (\Interpolador1|II\(2) $ (\Interpolador1|Add9~3\)))) # (GND)
-- \Interpolador1|Add9~5\ = CARRY((\Interpolador1|Add8~0_combout\ & ((!\Interpolador1|Add9~3\) # (!\Interpolador1|II\(2)))) # (!\Interpolador1|Add8~0_combout\ & (!\Interpolador1|II\(2) & !\Interpolador1|Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add8~0_combout\,
	datab => \Interpolador1|II\(2),
	datad => VCC,
	cin => \Interpolador1|Add9~3\,
	combout => \Interpolador1|Add9~4_combout\,
	cout => \Interpolador1|Add9~5\);

-- Location: LCCOMB_X6_Y12_N6
\Interpolador1|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~6_combout\ = (\Interpolador1|Add8~2_combout\ & ((\Interpolador1|II\(3) & (!\Interpolador1|Add9~5\)) # (!\Interpolador1|II\(3) & (\Interpolador1|Add9~5\ & VCC)))) # (!\Interpolador1|Add8~2_combout\ & ((\Interpolador1|II\(3) & 
-- ((\Interpolador1|Add9~5\) # (GND))) # (!\Interpolador1|II\(3) & (!\Interpolador1|Add9~5\))))
-- \Interpolador1|Add9~7\ = CARRY((\Interpolador1|Add8~2_combout\ & (\Interpolador1|II\(3) & !\Interpolador1|Add9~5\)) # (!\Interpolador1|Add8~2_combout\ & ((\Interpolador1|II\(3)) # (!\Interpolador1|Add9~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add8~2_combout\,
	datab => \Interpolador1|II\(3),
	datad => VCC,
	cin => \Interpolador1|Add9~5\,
	combout => \Interpolador1|Add9~6_combout\,
	cout => \Interpolador1|Add9~7\);

-- Location: LCFF_X9_Y12_N17
\Interpolador1|FF[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|FF[7]~19_combout\,
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|FF\(7));

-- Location: LCCOMB_X9_Y12_N16
\Interpolador1|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add6~14_combout\ = (\Interpolador1|FF\(7) & ((\Interpolador1|EE\(7) & (!\Interpolador1|Add6~13\)) # (!\Interpolador1|EE\(7) & ((\Interpolador1|Add6~13\) # (GND))))) # (!\Interpolador1|FF\(7) & ((\Interpolador1|EE\(7) & 
-- (\Interpolador1|Add6~13\ & VCC)) # (!\Interpolador1|EE\(7) & (!\Interpolador1|Add6~13\))))
-- \Interpolador1|Add6~15\ = CARRY((\Interpolador1|FF\(7) & ((!\Interpolador1|Add6~13\) # (!\Interpolador1|EE\(7)))) # (!\Interpolador1|FF\(7) & (!\Interpolador1|EE\(7) & !\Interpolador1|Add6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|FF\(7),
	datab => \Interpolador1|EE\(7),
	datad => VCC,
	cin => \Interpolador1|Add6~13\,
	combout => \Interpolador1|Add6~14_combout\,
	cout => \Interpolador1|Add6~15\);

-- Location: LCFF_X8_Y11_N15
\Interpolador1|GG[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|GG[11]~23_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|GG\(11));

-- Location: LCFF_X8_Y11_N13
\Interpolador1|GG[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|GG[10]~21_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|GG\(10));

-- Location: LCFF_X8_Y11_N11
\Interpolador1|GG[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|GG[9]~19_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|GG\(9));

-- Location: LCFF_X8_Y11_N9
\Interpolador1|GG[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|GG[8]~17_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|GG\(8));

-- Location: LCFF_X8_Y11_N5
\Interpolador1|GG[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|GG[6]~13_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|GG\(6));

-- Location: LCCOMB_X8_Y12_N16
\Interpolador1|Add7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add7~16_combout\ = ((\Interpolador1|GG\(10) $ (\Interpolador1|Add6~20_combout\ $ (!\Interpolador1|Add7~15\)))) # (GND)
-- \Interpolador1|Add7~17\ = CARRY((\Interpolador1|GG\(10) & ((\Interpolador1|Add6~20_combout\) # (!\Interpolador1|Add7~15\))) # (!\Interpolador1|GG\(10) & (\Interpolador1|Add6~20_combout\ & !\Interpolador1|Add7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|GG\(10),
	datab => \Interpolador1|Add6~20_combout\,
	datad => VCC,
	cin => \Interpolador1|Add7~15\,
	combout => \Interpolador1|Add7~16_combout\,
	cout => \Interpolador1|Add7~17\);

-- Location: LCCOMB_X8_Y12_N22
\Interpolador1|Add7~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add7~22_combout\ = (\Interpolador1|Add6~24_combout\ & (!\Interpolador1|Add7~21\)) # (!\Interpolador1|Add6~24_combout\ & ((\Interpolador1|Add7~21\) # (GND)))
-- \Interpolador1|Add7~23\ = CARRY((!\Interpolador1|Add7~21\) # (!\Interpolador1|Add6~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add6~24_combout\,
	datad => VCC,
	cin => \Interpolador1|Add7~21\,
	combout => \Interpolador1|Add7~22_combout\,
	cout => \Interpolador1|Add7~23\);

-- Location: LCFF_X7_Y11_N19
\Interpolador1|HH[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|HH[12]~25_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|HH\(12));

-- Location: LCFF_X7_Y11_N17
\Interpolador1|HH[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|HH[11]~23_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|HH\(11));

-- Location: LCFF_X7_Y11_N13
\Interpolador1|HH[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|HH[9]~19_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|HH\(9));

-- Location: LCFF_X7_Y11_N11
\Interpolador1|HH[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|HH[8]~17_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|HH\(8));

-- Location: LCFF_X7_Y11_N9
\Interpolador1|HH[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|HH[7]~15_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|HH\(7));

-- Location: LCFF_X7_Y11_N7
\Interpolador1|HH[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|HH[6]~13_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|HH\(6));

-- Location: LCCOMB_X7_Y12_N16
\Interpolador1|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~12_combout\ = ((\Interpolador1|HH\(8) $ (\Interpolador1|Add7~12_combout\ $ (!\Interpolador1|Add8~11\)))) # (GND)
-- \Interpolador1|Add8~13\ = CARRY((\Interpolador1|HH\(8) & ((\Interpolador1|Add7~12_combout\) # (!\Interpolador1|Add8~11\))) # (!\Interpolador1|HH\(8) & (\Interpolador1|Add7~12_combout\ & !\Interpolador1|Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|HH\(8),
	datab => \Interpolador1|Add7~12_combout\,
	datad => VCC,
	cin => \Interpolador1|Add8~11\,
	combout => \Interpolador1|Add8~12_combout\,
	cout => \Interpolador1|Add8~13\);

-- Location: LCCOMB_X7_Y12_N26
\Interpolador1|Add8~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~22_combout\ = (\Interpolador1|Add7~22_combout\ & (!\Interpolador1|Add8~21\)) # (!\Interpolador1|Add7~22_combout\ & ((\Interpolador1|Add8~21\) # (GND)))
-- \Interpolador1|Add8~23\ = CARRY((!\Interpolador1|Add8~21\) # (!\Interpolador1|Add7~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add7~22_combout\,
	datad => VCC,
	cin => \Interpolador1|Add8~21\,
	combout => \Interpolador1|Add8~22_combout\,
	cout => \Interpolador1|Add8~23\);

-- Location: LCFF_X4_Y12_N17
\Interpolador1|II[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|II[10]~25_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|II\(10));

-- Location: LCFF_X4_Y12_N15
\Interpolador1|II[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|II[9]~23_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|II\(9));

-- Location: LCFF_X4_Y12_N11
\Interpolador1|II[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|II[7]~19_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|II\(7));

-- Location: LCFF_X4_Y12_N9
\Interpolador1|II[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|II[6]~17_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|II\(6));

-- Location: LCCOMB_X6_Y12_N16
\Interpolador1|Add9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~16_combout\ = ((\Interpolador1|Add8~12_combout\ $ (\Interpolador1|II\(8) $ (\Interpolador1|Add9~15\)))) # (GND)
-- \Interpolador1|Add9~17\ = CARRY((\Interpolador1|Add8~12_combout\ & ((!\Interpolador1|Add9~15\) # (!\Interpolador1|II\(8)))) # (!\Interpolador1|Add8~12_combout\ & (!\Interpolador1|II\(8) & !\Interpolador1|Add9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add8~12_combout\,
	datab => \Interpolador1|II\(8),
	datad => VCC,
	cin => \Interpolador1|Add9~15\,
	combout => \Interpolador1|Add9~16_combout\,
	cout => \Interpolador1|Add9~17\);

-- Location: LCCOMB_X6_Y12_N26
\Interpolador1|Add9~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~26_combout\ = (\Interpolador1|Add8~22_combout\ & (\Interpolador1|Add9~25\ & VCC)) # (!\Interpolador1|Add8~22_combout\ & (!\Interpolador1|Add9~25\))
-- \Interpolador1|Add9~27\ = CARRY((!\Interpolador1|Add8~22_combout\ & !\Interpolador1|Add9~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add8~22_combout\,
	datad => VCC,
	cin => \Interpolador1|Add9~25\,
	combout => \Interpolador1|Add9~26_combout\,
	cout => \Interpolador1|Add9~27\);

-- Location: LCCOMB_X5_Y12_N20
\Interpolador1|aux1[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[10]~31_combout\ = (\Interpolador1|Add9~20_combout\ & (\Interpolador1|aux1[9]~30\ $ (GND))) # (!\Interpolador1|Add9~20_combout\ & (!\Interpolador1|aux1[9]~30\ & VCC))
-- \Interpolador1|aux1[10]~32\ = CARRY((\Interpolador1|Add9~20_combout\ & !\Interpolador1|aux1[9]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|Add9~20_combout\,
	datad => VCC,
	cin => \Interpolador1|aux1[9]~30\,
	combout => \Interpolador1|aux1[10]~31_combout\,
	cout => \Interpolador1|aux1[10]~32\);

-- Location: LCCOMB_X4_Y12_N4
\Interpolador1|II[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|II[4]~13_combout\ = ((\Passador1|saida4\(2) $ (\Passador1|saida4\(4) $ (!\Interpolador1|II[3]~12\)))) # (GND)
-- \Interpolador1|II[4]~14\ = CARRY((\Passador1|saida4\(2) & ((\Passador1|saida4\(4)) # (!\Interpolador1|II[3]~12\))) # (!\Passador1|saida4\(2) & (\Passador1|saida4\(4) & !\Interpolador1|II[3]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida4\(2),
	datab => \Passador1|saida4\(4),
	datad => VCC,
	cin => \Interpolador1|II[3]~12\,
	combout => \Interpolador1|II[4]~13_combout\,
	cout => \Interpolador1|II[4]~14\);

-- Location: LCCOMB_X4_Y12_N6
\Interpolador1|II[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|II[5]~15_combout\ = (\Passador1|saida4\(3) & ((\Passador1|saida4\(5) & (\Interpolador1|II[4]~14\ & VCC)) # (!\Passador1|saida4\(5) & (!\Interpolador1|II[4]~14\)))) # (!\Passador1|saida4\(3) & ((\Passador1|saida4\(5) & 
-- (!\Interpolador1|II[4]~14\)) # (!\Passador1|saida4\(5) & ((\Interpolador1|II[4]~14\) # (GND)))))
-- \Interpolador1|II[5]~16\ = CARRY((\Passador1|saida4\(3) & (!\Passador1|saida4\(5) & !\Interpolador1|II[4]~14\)) # (!\Passador1|saida4\(3) & ((!\Interpolador1|II[4]~14\) # (!\Passador1|saida4\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida4\(3),
	datab => \Passador1|saida4\(5),
	datad => VCC,
	cin => \Interpolador1|II[4]~14\,
	combout => \Interpolador1|II[5]~15_combout\,
	cout => \Interpolador1|II[5]~16\);

-- Location: LCCOMB_X10_Y12_N12
\Interpolador1|FF[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|FF[2]~9_combout\ = (\Passador1|saida1\(0) & (\Passador1|saida1\(2) $ (VCC))) # (!\Passador1|saida1\(0) & (\Passador1|saida1\(2) & VCC))
-- \Interpolador1|FF[2]~10\ = CARRY((\Passador1|saida1\(0) & \Passador1|saida1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida1\(0),
	datab => \Passador1|saida1\(2),
	datad => VCC,
	combout => \Interpolador1|FF[2]~9_combout\,
	cout => \Interpolador1|FF[2]~10\);

-- Location: LCCOMB_X10_Y12_N18
\Interpolador1|FF[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|FF[5]~15_combout\ = (\Passador1|saida1\(3) & ((\Passador1|saida1\(5) & (\Interpolador1|FF[4]~14\ & VCC)) # (!\Passador1|saida1\(5) & (!\Interpolador1|FF[4]~14\)))) # (!\Passador1|saida1\(3) & ((\Passador1|saida1\(5) & 
-- (!\Interpolador1|FF[4]~14\)) # (!\Passador1|saida1\(5) & ((\Interpolador1|FF[4]~14\) # (GND)))))
-- \Interpolador1|FF[5]~16\ = CARRY((\Passador1|saida1\(3) & (!\Passador1|saida1\(5) & !\Interpolador1|FF[4]~14\)) # (!\Passador1|saida1\(3) & ((!\Interpolador1|FF[4]~14\) # (!\Passador1|saida1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida1\(3),
	datab => \Passador1|saida1\(5),
	datad => VCC,
	cin => \Interpolador1|FF[4]~14\,
	combout => \Interpolador1|FF[5]~15_combout\,
	cout => \Interpolador1|FF[5]~16\);

-- Location: LCCOMB_X8_Y11_N0
\Interpolador1|GG[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|GG[4]~9_combout\ = (\Passador1|saida2\(2) & (\Passador1|saida2\(0) $ (VCC))) # (!\Passador1|saida2\(2) & (\Passador1|saida2\(0) & VCC))
-- \Interpolador1|GG[4]~10\ = CARRY((\Passador1|saida2\(2) & \Passador1|saida2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida2\(2),
	datab => \Passador1|saida2\(0),
	datad => VCC,
	combout => \Interpolador1|GG[4]~9_combout\,
	cout => \Interpolador1|GG[4]~10\);

-- Location: LCCOMB_X8_Y11_N2
\Interpolador1|GG[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|GG[5]~11_combout\ = (\Passador1|saida2\(1) & ((\Passador1|saida2\(3) & (\Interpolador1|GG[4]~10\ & VCC)) # (!\Passador1|saida2\(3) & (!\Interpolador1|GG[4]~10\)))) # (!\Passador1|saida2\(1) & ((\Passador1|saida2\(3) & 
-- (!\Interpolador1|GG[4]~10\)) # (!\Passador1|saida2\(3) & ((\Interpolador1|GG[4]~10\) # (GND)))))
-- \Interpolador1|GG[5]~12\ = CARRY((\Passador1|saida2\(1) & (!\Passador1|saida2\(3) & !\Interpolador1|GG[4]~10\)) # (!\Passador1|saida2\(1) & ((!\Interpolador1|GG[4]~10\) # (!\Passador1|saida2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida2\(1),
	datab => \Passador1|saida2\(3),
	datad => VCC,
	cin => \Interpolador1|GG[4]~10\,
	combout => \Interpolador1|GG[5]~11_combout\,
	cout => \Interpolador1|GG[5]~12\);

-- Location: LCCOMB_X10_Y12_N22
\Interpolador1|FF[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|FF[7]~19_combout\ = (\Passador1|saida1\(7) & ((\Passador1|saida1\(5) & (\Interpolador1|FF[6]~18\ & VCC)) # (!\Passador1|saida1\(5) & (!\Interpolador1|FF[6]~18\)))) # (!\Passador1|saida1\(7) & ((\Passador1|saida1\(5) & 
-- (!\Interpolador1|FF[6]~18\)) # (!\Passador1|saida1\(5) & ((\Interpolador1|FF[6]~18\) # (GND)))))
-- \Interpolador1|FF[7]~20\ = CARRY((\Passador1|saida1\(7) & (!\Passador1|saida1\(5) & !\Interpolador1|FF[6]~18\)) # (!\Passador1|saida1\(7) & ((!\Interpolador1|FF[6]~18\) # (!\Passador1|saida1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida1\(7),
	datab => \Passador1|saida1\(5),
	datad => VCC,
	cin => \Interpolador1|FF[6]~18\,
	combout => \Interpolador1|FF[7]~19_combout\,
	cout => \Interpolador1|FF[7]~20\);

-- Location: LCCOMB_X8_Y11_N4
\Interpolador1|GG[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|GG[6]~13_combout\ = ((\Passador1|saida2\(4) $ (\Passador1|saida2\(2) $ (!\Interpolador1|GG[5]~12\)))) # (GND)
-- \Interpolador1|GG[6]~14\ = CARRY((\Passador1|saida2\(4) & ((\Passador1|saida2\(2)) # (!\Interpolador1|GG[5]~12\))) # (!\Passador1|saida2\(4) & (\Passador1|saida2\(2) & !\Interpolador1|GG[5]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida2\(4),
	datab => \Passador1|saida2\(2),
	datad => VCC,
	cin => \Interpolador1|GG[5]~12\,
	combout => \Interpolador1|GG[6]~13_combout\,
	cout => \Interpolador1|GG[6]~14\);

-- Location: LCCOMB_X8_Y11_N8
\Interpolador1|GG[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|GG[8]~17_combout\ = ((\Passador1|saida2\(6) $ (\Passador1|saida2\(4) $ (!\Interpolador1|GG[7]~16\)))) # (GND)
-- \Interpolador1|GG[8]~18\ = CARRY((\Passador1|saida2\(6) & ((\Passador1|saida2\(4)) # (!\Interpolador1|GG[7]~16\))) # (!\Passador1|saida2\(6) & (\Passador1|saida2\(4) & !\Interpolador1|GG[7]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida2\(6),
	datab => \Passador1|saida2\(4),
	datad => VCC,
	cin => \Interpolador1|GG[7]~16\,
	combout => \Interpolador1|GG[8]~17_combout\,
	cout => \Interpolador1|GG[8]~18\);

-- Location: LCCOMB_X8_Y11_N10
\Interpolador1|GG[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|GG[9]~19_combout\ = (\Passador1|saida2\(5) & ((\Passador1|saida2\(7) & (\Interpolador1|GG[8]~18\ & VCC)) # (!\Passador1|saida2\(7) & (!\Interpolador1|GG[8]~18\)))) # (!\Passador1|saida2\(5) & ((\Passador1|saida2\(7) & 
-- (!\Interpolador1|GG[8]~18\)) # (!\Passador1|saida2\(7) & ((\Interpolador1|GG[8]~18\) # (GND)))))
-- \Interpolador1|GG[9]~20\ = CARRY((\Passador1|saida2\(5) & (!\Passador1|saida2\(7) & !\Interpolador1|GG[8]~18\)) # (!\Passador1|saida2\(5) & ((!\Interpolador1|GG[8]~18\) # (!\Passador1|saida2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida2\(5),
	datab => \Passador1|saida2\(7),
	datad => VCC,
	cin => \Interpolador1|GG[8]~18\,
	combout => \Interpolador1|GG[9]~19_combout\,
	cout => \Interpolador1|GG[9]~20\);

-- Location: LCCOMB_X8_Y11_N12
\Interpolador1|GG[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|GG[10]~21_combout\ = (\Passador1|saida2\(6) & (\Interpolador1|GG[9]~20\ $ (GND))) # (!\Passador1|saida2\(6) & (!\Interpolador1|GG[9]~20\ & VCC))
-- \Interpolador1|GG[10]~22\ = CARRY((\Passador1|saida2\(6) & !\Interpolador1|GG[9]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida2\(6),
	datad => VCC,
	cin => \Interpolador1|GG[9]~20\,
	combout => \Interpolador1|GG[10]~21_combout\,
	cout => \Interpolador1|GG[10]~22\);

-- Location: LCCOMB_X8_Y11_N14
\Interpolador1|GG[11]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|GG[11]~23_combout\ = (\Passador1|saida2\(7) & (!\Interpolador1|GG[10]~22\)) # (!\Passador1|saida2\(7) & ((\Interpolador1|GG[10]~22\) # (GND)))
-- \Interpolador1|GG[11]~24\ = CARRY((!\Interpolador1|GG[10]~22\) # (!\Passador1|saida2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Passador1|saida2\(7),
	datad => VCC,
	cin => \Interpolador1|GG[10]~22\,
	combout => \Interpolador1|GG[11]~23_combout\,
	cout => \Interpolador1|GG[11]~24\);

-- Location: LCCOMB_X7_Y11_N6
\Interpolador1|HH[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|HH[6]~13_combout\ = ((\Passador1|saida3\(2) $ (\Passador1|saida3\(4) $ (!\Interpolador1|HH[5]~12\)))) # (GND)
-- \Interpolador1|HH[6]~14\ = CARRY((\Passador1|saida3\(2) & ((\Passador1|saida3\(4)) # (!\Interpolador1|HH[5]~12\))) # (!\Passador1|saida3\(2) & (\Passador1|saida3\(4) & !\Interpolador1|HH[5]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida3\(2),
	datab => \Passador1|saida3\(4),
	datad => VCC,
	cin => \Interpolador1|HH[5]~12\,
	combout => \Interpolador1|HH[6]~13_combout\,
	cout => \Interpolador1|HH[6]~14\);

-- Location: LCCOMB_X7_Y11_N8
\Interpolador1|HH[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|HH[7]~15_combout\ = (\Passador1|saida3\(3) & ((\Passador1|saida3\(5) & (\Interpolador1|HH[6]~14\ & VCC)) # (!\Passador1|saida3\(5) & (!\Interpolador1|HH[6]~14\)))) # (!\Passador1|saida3\(3) & ((\Passador1|saida3\(5) & 
-- (!\Interpolador1|HH[6]~14\)) # (!\Passador1|saida3\(5) & ((\Interpolador1|HH[6]~14\) # (GND)))))
-- \Interpolador1|HH[7]~16\ = CARRY((\Passador1|saida3\(3) & (!\Passador1|saida3\(5) & !\Interpolador1|HH[6]~14\)) # (!\Passador1|saida3\(3) & ((!\Interpolador1|HH[6]~14\) # (!\Passador1|saida3\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida3\(3),
	datab => \Passador1|saida3\(5),
	datad => VCC,
	cin => \Interpolador1|HH[6]~14\,
	combout => \Interpolador1|HH[7]~15_combout\,
	cout => \Interpolador1|HH[7]~16\);

-- Location: LCCOMB_X7_Y11_N10
\Interpolador1|HH[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|HH[8]~17_combout\ = ((\Passador1|saida3\(6) $ (\Passador1|saida3\(4) $ (!\Interpolador1|HH[7]~16\)))) # (GND)
-- \Interpolador1|HH[8]~18\ = CARRY((\Passador1|saida3\(6) & ((\Passador1|saida3\(4)) # (!\Interpolador1|HH[7]~16\))) # (!\Passador1|saida3\(6) & (\Passador1|saida3\(4) & !\Interpolador1|HH[7]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida3\(6),
	datab => \Passador1|saida3\(4),
	datad => VCC,
	cin => \Interpolador1|HH[7]~16\,
	combout => \Interpolador1|HH[8]~17_combout\,
	cout => \Interpolador1|HH[8]~18\);

-- Location: LCCOMB_X7_Y11_N12
\Interpolador1|HH[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|HH[9]~19_combout\ = (\Passador1|saida3\(7) & ((\Passador1|saida3\(5) & (\Interpolador1|HH[8]~18\ & VCC)) # (!\Passador1|saida3\(5) & (!\Interpolador1|HH[8]~18\)))) # (!\Passador1|saida3\(7) & ((\Passador1|saida3\(5) & 
-- (!\Interpolador1|HH[8]~18\)) # (!\Passador1|saida3\(5) & ((\Interpolador1|HH[8]~18\) # (GND)))))
-- \Interpolador1|HH[9]~20\ = CARRY((\Passador1|saida3\(7) & (!\Passador1|saida3\(5) & !\Interpolador1|HH[8]~18\)) # (!\Passador1|saida3\(7) & ((!\Interpolador1|HH[8]~18\) # (!\Passador1|saida3\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida3\(7),
	datab => \Passador1|saida3\(5),
	datad => VCC,
	cin => \Interpolador1|HH[8]~18\,
	combout => \Interpolador1|HH[9]~19_combout\,
	cout => \Interpolador1|HH[9]~20\);

-- Location: LCCOMB_X7_Y11_N14
\Interpolador1|HH[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|HH[10]~21_combout\ = (\Passador1|saida3\(6) & (\Interpolador1|HH[9]~20\ $ (GND))) # (!\Passador1|saida3\(6) & (!\Interpolador1|HH[9]~20\ & VCC))
-- \Interpolador1|HH[10]~22\ = CARRY((\Passador1|saida3\(6) & !\Interpolador1|HH[9]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida3\(6),
	datad => VCC,
	cin => \Interpolador1|HH[9]~20\,
	combout => \Interpolador1|HH[10]~21_combout\,
	cout => \Interpolador1|HH[10]~22\);

-- Location: LCCOMB_X7_Y11_N16
\Interpolador1|HH[11]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|HH[11]~23_combout\ = (\Passador1|saida3\(7) & (!\Interpolador1|HH[10]~22\)) # (!\Passador1|saida3\(7) & ((\Interpolador1|HH[10]~22\) # (GND)))
-- \Interpolador1|HH[11]~24\ = CARRY((!\Interpolador1|HH[10]~22\) # (!\Passador1|saida3\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Passador1|saida3\(7),
	datad => VCC,
	cin => \Interpolador1|HH[10]~22\,
	combout => \Interpolador1|HH[11]~23_combout\,
	cout => \Interpolador1|HH[11]~24\);

-- Location: LCCOMB_X7_Y11_N18
\Interpolador1|HH[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|HH[12]~25_combout\ = !\Interpolador1|HH[11]~24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Interpolador1|HH[11]~24\,
	combout => \Interpolador1|HH[12]~25_combout\);

-- Location: LCCOMB_X4_Y12_N8
\Interpolador1|II[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|II[6]~17_combout\ = ((\Passador1|saida4\(4) $ (\Passador1|saida4\(6) $ (!\Interpolador1|II[5]~16\)))) # (GND)
-- \Interpolador1|II[6]~18\ = CARRY((\Passador1|saida4\(4) & ((\Passador1|saida4\(6)) # (!\Interpolador1|II[5]~16\))) # (!\Passador1|saida4\(4) & (\Passador1|saida4\(6) & !\Interpolador1|II[5]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida4\(4),
	datab => \Passador1|saida4\(6),
	datad => VCC,
	cin => \Interpolador1|II[5]~16\,
	combout => \Interpolador1|II[6]~17_combout\,
	cout => \Interpolador1|II[6]~18\);

-- Location: LCCOMB_X4_Y12_N10
\Interpolador1|II[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|II[7]~19_combout\ = (\Passador1|saida4\(7) & ((\Passador1|saida4\(5) & (\Interpolador1|II[6]~18\ & VCC)) # (!\Passador1|saida4\(5) & (!\Interpolador1|II[6]~18\)))) # (!\Passador1|saida4\(7) & ((\Passador1|saida4\(5) & 
-- (!\Interpolador1|II[6]~18\)) # (!\Passador1|saida4\(5) & ((\Interpolador1|II[6]~18\) # (GND)))))
-- \Interpolador1|II[7]~20\ = CARRY((\Passador1|saida4\(7) & (!\Passador1|saida4\(5) & !\Interpolador1|II[6]~18\)) # (!\Passador1|saida4\(7) & ((!\Interpolador1|II[6]~18\) # (!\Passador1|saida4\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida4\(7),
	datab => \Passador1|saida4\(5),
	datad => VCC,
	cin => \Interpolador1|II[6]~18\,
	combout => \Interpolador1|II[7]~19_combout\,
	cout => \Interpolador1|II[7]~20\);

-- Location: LCCOMB_X4_Y12_N12
\Interpolador1|II[8]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|II[8]~21_combout\ = (\Passador1|saida4\(6) & (\Interpolador1|II[7]~20\ $ (GND))) # (!\Passador1|saida4\(6) & (!\Interpolador1|II[7]~20\ & VCC))
-- \Interpolador1|II[8]~22\ = CARRY((\Passador1|saida4\(6) & !\Interpolador1|II[7]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Passador1|saida4\(6),
	datad => VCC,
	cin => \Interpolador1|II[7]~20\,
	combout => \Interpolador1|II[8]~21_combout\,
	cout => \Interpolador1|II[8]~22\);

-- Location: LCCOMB_X4_Y12_N14
\Interpolador1|II[9]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|II[9]~23_combout\ = (\Passador1|saida4\(7) & (!\Interpolador1|II[8]~22\)) # (!\Passador1|saida4\(7) & ((\Interpolador1|II[8]~22\) # (GND)))
-- \Interpolador1|II[9]~24\ = CARRY((!\Interpolador1|II[8]~22\) # (!\Passador1|saida4\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Passador1|saida4\(7),
	datad => VCC,
	cin => \Interpolador1|II[8]~22\,
	combout => \Interpolador1|II[9]~23_combout\,
	cout => \Interpolador1|II[9]~24\);

-- Location: LCCOMB_X4_Y12_N16
\Interpolador1|II[10]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|II[10]~25_combout\ = !\Interpolador1|II[9]~24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Interpolador1|II[9]~24\,
	combout => \Interpolador1|II[10]~25_combout\);

-- Location: LCFF_X8_Y13_N21
\Interpolador1|inicioImagem\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|inicioImagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|inicioImagem~regout\);

-- Location: LCFF_X10_Y11_N25
\Interpolador1|auxTrocaLinha[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxTrocaLinha~0_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxTrocaLinha\(0));

-- Location: LCFF_X10_Y11_N17
\Interpolador1|auxTrocaLinha[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|auxTrocaLinha~5_combout\,
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxTrocaLinha\(5));

-- Location: LCFF_X9_Y11_N1
\Interpolador1|auxTrocaLinha[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxTrocaLinha~7_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxTrocaLinha\(7));

-- Location: LCCOMB_X8_Y13_N20
\Interpolador1|inicioImagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|inicioImagem~0_combout\ = (\Interpolador1|Equal0~0_combout\ & (\Interpolador1|Equal0~1_combout\ & (\Interpolador1|processing~regout\ & \Interpolador1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Equal0~0_combout\,
	datab => \Interpolador1|Equal0~1_combout\,
	datac => \Interpolador1|processing~regout\,
	datad => \Interpolador1|Equal0~2_combout\,
	combout => \Interpolador1|inicioImagem~0_combout\);

-- Location: LCCOMB_X8_Y13_N14
\Interpolador1|auxInicioImagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxInicioImagem~0_combout\ = (!\auxInicio~combout\ & !\Interpolador1|auxInicioImagem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxInicio~combout\,
	datad => \Interpolador1|auxInicioImagem\(0),
	combout => \Interpolador1|auxInicioImagem~0_combout\);

-- Location: LCCOMB_X10_Y11_N24
\Interpolador1|auxTrocaLinha~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxTrocaLinha~0_combout\ = (\Interpolador1|Add0~0_combout\ & ((\Interpolador1|Equal1~1_combout\) # ((\Interpolador1|Equal1~0_combout\) # (!\Interpolador1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Equal1~1_combout\,
	datab => \Interpolador1|Add0~0_combout\,
	datac => \Interpolador1|Add0~16_combout\,
	datad => \Interpolador1|Equal1~0_combout\,
	combout => \Interpolador1|auxTrocaLinha~0_combout\);

-- Location: LCCOMB_X9_Y11_N20
\Interpolador1|auxTrocaLinha~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxTrocaLinha~5_combout\ = (\Interpolador1|Add0~10_combout\ & ((\Interpolador1|Equal1~1_combout\) # ((\Interpolador1|Equal1~0_combout\) # (!\Interpolador1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Equal1~1_combout\,
	datab => \Interpolador1|Equal1~0_combout\,
	datac => \Interpolador1|Add0~10_combout\,
	datad => \Interpolador1|Add0~16_combout\,
	combout => \Interpolador1|auxTrocaLinha~5_combout\);

-- Location: LCCOMB_X9_Y11_N0
\Interpolador1|auxTrocaLinha~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxTrocaLinha~7_combout\ = (\Interpolador1|Add0~14_combout\ & ((\Interpolador1|Equal1~0_combout\) # ((\Interpolador1|Equal1~1_combout\) # (!\Interpolador1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Equal1~0_combout\,
	datab => \Interpolador1|Add0~16_combout\,
	datac => \Interpolador1|Equal1~1_combout\,
	datad => \Interpolador1|Add0~14_combout\,
	combout => \Interpolador1|auxTrocaLinha~7_combout\);

-- Location: LCFF_X5_Y11_N7
\Interpolador1|aux2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|aux1\(10),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux2\(5));

-- Location: LCCOMB_X5_Y11_N10
\Interpolador1|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|LessThan1~1_combout\ = (((!\Interpolador1|aux2\(6)) # (!\Interpolador1|aux2\(7))) # (!\Interpolador1|aux2\(4))) # (!\Interpolador1|aux2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|aux2\(5),
	datab => \Interpolador1|aux2\(4),
	datac => \Interpolador1|aux2\(7),
	datad => \Interpolador1|aux2\(6),
	combout => \Interpolador1|LessThan1~1_combout\);

-- Location: LCFF_X9_Y12_N3
\Interpolador1|FF[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida1\(0),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|FF\(0));

-- Location: LCFF_X8_Y12_N3
\Interpolador1|GG[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida2\(1),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|GG\(3));

-- Location: LCFF_X7_Y12_N5
\Interpolador1|HH[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida3\(0),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|HH\(2));

-- Location: LCFF_X5_Y12_N1
\Interpolador1|JJ[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida5\(5),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|JJ\(5));

-- Location: LCFF_X6_Y12_N9
\Interpolador1|JJ[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida5\(4),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|JJ\(4));

-- Location: LCFF_X5_Y12_N9
\Interpolador1|JJ[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida5\(0),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|JJ\(0));

-- Location: LCFF_X6_Y11_N5
\Interpolador1|JJ[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|JJ[7]~feeder_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|JJ\(7));

-- Location: LCFF_X8_Y11_N21
\Interpolador1|JJ[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|JJ[6]~feeder_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|JJ\(6));

-- Location: LCFF_X6_Y12_N7
\Passador1|saida5[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida4\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida5\(5));

-- Location: LCFF_X6_Y12_N25
\Passador1|saida5[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida4\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida5\(4));

-- Location: LCFF_X6_Y12_N29
\Passador1|saida5[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida4\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida5\(0));

-- Location: LCFF_X7_Y11_N23
\Passador1|saida3[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida3[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida3\(7));

-- Location: LCFF_X7_Y11_N25
\Passador1|saida4[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida4[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida4\(7));

-- Location: LCFF_X7_Y11_N31
\Passador1|saida5[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida4\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida5\(7));

-- Location: LCFF_X8_Y11_N19
\Passador1|saida5[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida5[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida5\(6));

-- Location: LCCOMB_X8_Y13_N12
auxInicio : cycloneii_lcell_comb
-- Equation(s):
-- \auxInicio~combout\ = (!\estado_atual~regout\ & ((\start~combout\) # (\auxInicio~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual~regout\,
	datac => \start~combout\,
	datad => \auxInicio~combout\,
	combout => \auxInicio~combout\);

-- Location: LCCOMB_X7_Y11_N22
\Passador1|saida3[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida3[7]~feeder_combout\ = \Passador1|saida2\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida2\(7),
	combout => \Passador1|saida3[7]~feeder_combout\);

-- Location: LCCOMB_X7_Y11_N24
\Passador1|saida4[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida4[7]~feeder_combout\ = \Passador1|saida3\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida3\(7),
	combout => \Passador1|saida4[7]~feeder_combout\);

-- Location: LCCOMB_X8_Y11_N18
\Passador1|saida5[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida5[6]~feeder_combout\ = \Passador1|saida4\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida4\(6),
	combout => \Passador1|saida5[6]~feeder_combout\);

-- Location: LCCOMB_X6_Y11_N4
\Interpolador1|JJ[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|JJ[7]~feeder_combout\ = \Passador1|saida5\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida5\(7),
	combout => \Interpolador1|JJ[7]~feeder_combout\);

-- Location: LCCOMB_X8_Y11_N20
\Interpolador1|JJ[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|JJ[6]~feeder_combout\ = \Passador1|saida5\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida5\(6),
	combout => \Interpolador1|JJ[6]~feeder_combout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: LCCOMB_X8_Y13_N4
\proximo_estado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximo_estado~0_combout\ = (\estado_atual~regout\ & (!\Interpolador1|inicioImagem~regout\)) # (!\estado_atual~regout\ & ((\start~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|inicioImagem~regout\,
	datab => \start~combout\,
	datac => \estado_atual~regout\,
	combout => \proximo_estado~0_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X8_Y13_N5
estado_atual : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \proximo_estado~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual~regout\);

-- Location: LCCOMB_X10_Y11_N4
\Interpolador1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add0~0_combout\ = \Interpolador1|auxTrocaLinha\(0) $ (VCC)
-- \Interpolador1|Add0~1\ = CARRY(\Interpolador1|auxTrocaLinha\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|auxTrocaLinha\(0),
	datad => VCC,
	combout => \Interpolador1|Add0~0_combout\,
	cout => \Interpolador1|Add0~1\);

-- Location: LCCOMB_X10_Y11_N6
\Interpolador1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add0~2_combout\ = (\Interpolador1|auxTrocaLinha\(1) & (!\Interpolador1|Add0~1\)) # (!\Interpolador1|auxTrocaLinha\(1) & ((\Interpolador1|Add0~1\) # (GND)))
-- \Interpolador1|Add0~3\ = CARRY((!\Interpolador1|Add0~1\) # (!\Interpolador1|auxTrocaLinha\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|auxTrocaLinha\(1),
	datad => VCC,
	cin => \Interpolador1|Add0~1\,
	combout => \Interpolador1|Add0~2_combout\,
	cout => \Interpolador1|Add0~3\);

-- Location: LCCOMB_X10_Y11_N26
\Interpolador1|auxTrocaLinha~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxTrocaLinha~1_combout\ = (\Interpolador1|Add0~2_combout\ & ((\Interpolador1|Equal1~1_combout\) # ((\Interpolador1|Equal1~0_combout\) # (!\Interpolador1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Equal1~1_combout\,
	datab => \Interpolador1|Equal1~0_combout\,
	datac => \Interpolador1|Add0~16_combout\,
	datad => \Interpolador1|Add0~2_combout\,
	combout => \Interpolador1|auxTrocaLinha~1_combout\);

-- Location: LCCOMB_X8_Y13_N16
\Interpolador1|processing~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|processing~0_combout\ = (\Interpolador1|EE[0]~0_combout\) # ((\auxInicio~combout\ & !\Interpolador1|processing~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxInicio~combout\,
	datac => \Interpolador1|processing~regout\,
	datad => \Interpolador1|EE[0]~0_combout\,
	combout => \Interpolador1|processing~0_combout\);

-- Location: LCFF_X8_Y13_N17
\Interpolador1|processing\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|processing~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|processing~regout\);

-- Location: LCCOMB_X9_Y11_N4
\Interpolador1|auxInicioImagem[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxInicioImagem[4]~1_combout\ = ((\Interpolador1|Equal1~0_combout\) # ((\Interpolador1|Equal1~1_combout\) # (!\Interpolador1|Add0~16_combout\))) # (!\Interpolador1|EE[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|EE[0]~0_combout\,
	datab => \Interpolador1|Equal1~0_combout\,
	datac => \Interpolador1|Equal1~1_combout\,
	datad => \Interpolador1|Add0~16_combout\,
	combout => \Interpolador1|auxInicioImagem[4]~1_combout\);

-- Location: LCCOMB_X9_Y13_N12
\Interpolador1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add1~0_combout\ = (\Interpolador1|auxInicioImagem~0_combout\ & (\Interpolador1|auxInicioImagem[4]~1_combout\ $ (GND))) # (!\Interpolador1|auxInicioImagem~0_combout\ & (!\Interpolador1|auxInicioImagem[4]~1_combout\ & VCC))
-- \Interpolador1|Add1~1\ = CARRY((\Interpolador1|auxInicioImagem~0_combout\ & !\Interpolador1|auxInicioImagem[4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|auxInicioImagem~0_combout\,
	datab => \Interpolador1|auxInicioImagem[4]~1_combout\,
	datad => VCC,
	combout => \Interpolador1|Add1~0_combout\,
	cout => \Interpolador1|Add1~1\);

-- Location: LCCOMB_X9_Y13_N14
\Interpolador1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add1~2_combout\ = (\Interpolador1|Add1~1\ & ((\auxInicio~combout\) # ((\Interpolador1|auxInicioImagem\(1))))) # (!\Interpolador1|Add1~1\ & (((!\auxInicio~combout\ & !\Interpolador1|auxInicioImagem\(1))) # (GND)))
-- \Interpolador1|Add1~3\ = CARRY((\auxInicio~combout\) # ((\Interpolador1|auxInicioImagem\(1)) # (!\Interpolador1|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auxInicio~combout\,
	datab => \Interpolador1|auxInicioImagem\(1),
	datad => VCC,
	cin => \Interpolador1|Add1~1\,
	combout => \Interpolador1|Add1~2_combout\,
	cout => \Interpolador1|Add1~3\);

-- Location: LCCOMB_X8_Y13_N24
\Interpolador1|auxInicioImagem[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxInicioImagem[1]~3_combout\ = !\Interpolador1|Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Interpolador1|Add1~2_combout\,
	combout => \Interpolador1|auxInicioImagem[1]~3_combout\);

-- Location: LCFF_X8_Y13_N25
\Interpolador1|auxInicioImagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxInicioImagem[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxInicioImagem\(1));

-- Location: LCCOMB_X8_Y13_N2
\Interpolador1|auxInicioImagem[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxInicioImagem[0]~2_combout\ = !\Interpolador1|Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Interpolador1|Add1~0_combout\,
	combout => \Interpolador1|auxInicioImagem[0]~2_combout\);

-- Location: LCFF_X8_Y13_N3
\Interpolador1|auxInicioImagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxInicioImagem[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxInicioImagem\(0));

-- Location: LCCOMB_X8_Y13_N6
\Interpolador1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Equal0~0_combout\ = (!\auxInicio~combout\ & (!\Interpolador1|auxInicioImagem\(1) & !\Interpolador1|auxInicioImagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxInicio~combout\,
	datac => \Interpolador1|auxInicioImagem\(1),
	datad => \Interpolador1|auxInicioImagem\(0),
	combout => \Interpolador1|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y13_N16
\Interpolador1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add1~4_combout\ = (\Interpolador1|Add1~3\ & (!\auxInicio~combout\ & (!\Interpolador1|auxInicioImagem\(2) & VCC))) # (!\Interpolador1|Add1~3\ & ((((!\auxInicio~combout\ & !\Interpolador1|auxInicioImagem\(2))))))
-- \Interpolador1|Add1~5\ = CARRY((!\auxInicio~combout\ & (!\Interpolador1|auxInicioImagem\(2) & !\Interpolador1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auxInicio~combout\,
	datab => \Interpolador1|auxInicioImagem\(2),
	datad => VCC,
	cin => \Interpolador1|Add1~3\,
	combout => \Interpolador1|Add1~4_combout\,
	cout => \Interpolador1|Add1~5\);

-- Location: LCCOMB_X9_Y13_N4
\Interpolador1|auxInicioImagem[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxInicioImagem[2]~4_combout\ = !\Interpolador1|Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Interpolador1|Add1~4_combout\,
	combout => \Interpolador1|auxInicioImagem[2]~4_combout\);

-- Location: LCFF_X9_Y13_N5
\Interpolador1|auxInicioImagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxInicioImagem[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxInicioImagem\(2));

-- Location: LCCOMB_X9_Y13_N18
\Interpolador1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add1~6_combout\ = (\Interpolador1|Add1~5\ & ((\auxInicio~combout\) # ((\Interpolador1|auxInicioImagem\(3))))) # (!\Interpolador1|Add1~5\ & (((!\auxInicio~combout\ & !\Interpolador1|auxInicioImagem\(3))) # (GND)))
-- \Interpolador1|Add1~7\ = CARRY((\auxInicio~combout\) # ((\Interpolador1|auxInicioImagem\(3)) # (!\Interpolador1|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auxInicio~combout\,
	datab => \Interpolador1|auxInicioImagem\(3),
	datad => VCC,
	cin => \Interpolador1|Add1~5\,
	combout => \Interpolador1|Add1~6_combout\,
	cout => \Interpolador1|Add1~7\);

-- Location: LCCOMB_X9_Y13_N30
\Interpolador1|auxInicioImagem[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxInicioImagem[3]~5_combout\ = !\Interpolador1|Add1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|Add1~6_combout\,
	combout => \Interpolador1|auxInicioImagem[3]~5_combout\);

-- Location: LCFF_X9_Y13_N31
\Interpolador1|auxInicioImagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxInicioImagem[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxInicioImagem\(3));

-- Location: LCCOMB_X9_Y13_N20
\Interpolador1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add1~8_combout\ = (\Interpolador1|Add1~7\ & (!\auxInicio~combout\ & (!\Interpolador1|auxInicioImagem\(4) & VCC))) # (!\Interpolador1|Add1~7\ & ((((!\auxInicio~combout\ & !\Interpolador1|auxInicioImagem\(4))))))
-- \Interpolador1|Add1~9\ = CARRY((!\auxInicio~combout\ & (!\Interpolador1|auxInicioImagem\(4) & !\Interpolador1|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auxInicio~combout\,
	datab => \Interpolador1|auxInicioImagem\(4),
	datad => VCC,
	cin => \Interpolador1|Add1~7\,
	combout => \Interpolador1|Add1~8_combout\,
	cout => \Interpolador1|Add1~9\);

-- Location: LCCOMB_X9_Y13_N0
\Interpolador1|auxInicioImagem[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxInicioImagem[4]~6_combout\ = !\Interpolador1|Add1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Interpolador1|Add1~8_combout\,
	combout => \Interpolador1|auxInicioImagem[4]~6_combout\);

-- Location: LCFF_X9_Y13_N1
\Interpolador1|auxInicioImagem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxInicioImagem[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxInicioImagem\(4));

-- Location: LCCOMB_X8_Y13_N8
\Interpolador1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Equal0~1_combout\ = (!\Interpolador1|auxInicioImagem\(5) & (!\Interpolador1|auxInicioImagem\(3) & (!\Interpolador1|auxInicioImagem\(4) & !\Interpolador1|auxInicioImagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|auxInicioImagem\(5),
	datab => \Interpolador1|auxInicioImagem\(3),
	datac => \Interpolador1|auxInicioImagem\(4),
	datad => \Interpolador1|auxInicioImagem\(2),
	combout => \Interpolador1|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y11_N18
\Interpolador1|EE[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|EE[0]~0_combout\ = (\Interpolador1|processing~regout\ & (((!\Interpolador1|Equal0~1_combout\) # (!\Interpolador1|Equal0~0_combout\)) # (!\Interpolador1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Equal0~2_combout\,
	datab => \Interpolador1|processing~regout\,
	datac => \Interpolador1|Equal0~0_combout\,
	datad => \Interpolador1|Equal0~1_combout\,
	combout => \Interpolador1|EE[0]~0_combout\);

-- Location: LCFF_X10_Y11_N27
\Interpolador1|auxTrocaLinha[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxTrocaLinha~1_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxTrocaLinha\(1));

-- Location: LCCOMB_X10_Y11_N8
\Interpolador1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add0~4_combout\ = (\Interpolador1|auxTrocaLinha\(2) & (\Interpolador1|Add0~3\ $ (GND))) # (!\Interpolador1|auxTrocaLinha\(2) & (!\Interpolador1|Add0~3\ & VCC))
-- \Interpolador1|Add0~5\ = CARRY((\Interpolador1|auxTrocaLinha\(2) & !\Interpolador1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|auxTrocaLinha\(2),
	datad => VCC,
	cin => \Interpolador1|Add0~3\,
	combout => \Interpolador1|Add0~4_combout\,
	cout => \Interpolador1|Add0~5\);

-- Location: LCCOMB_X10_Y11_N10
\Interpolador1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add0~6_combout\ = (\Interpolador1|auxTrocaLinha\(3) & (!\Interpolador1|Add0~5\)) # (!\Interpolador1|auxTrocaLinha\(3) & ((\Interpolador1|Add0~5\) # (GND)))
-- \Interpolador1|Add0~7\ = CARRY((!\Interpolador1|Add0~5\) # (!\Interpolador1|auxTrocaLinha\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|auxTrocaLinha\(3),
	datad => VCC,
	cin => \Interpolador1|Add0~5\,
	combout => \Interpolador1|Add0~6_combout\,
	cout => \Interpolador1|Add0~7\);

-- Location: LCCOMB_X10_Y11_N28
\Interpolador1|auxTrocaLinha~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxTrocaLinha~3_combout\ = (\Interpolador1|Add0~6_combout\ & ((\Interpolador1|Equal1~1_combout\) # ((\Interpolador1|Equal1~0_combout\) # (!\Interpolador1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Equal1~1_combout\,
	datab => \Interpolador1|Equal1~0_combout\,
	datac => \Interpolador1|Add0~16_combout\,
	datad => \Interpolador1|Add0~6_combout\,
	combout => \Interpolador1|auxTrocaLinha~3_combout\);

-- Location: LCFF_X10_Y11_N29
\Interpolador1|auxTrocaLinha[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxTrocaLinha~3_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxTrocaLinha\(3));

-- Location: LCCOMB_X10_Y11_N12
\Interpolador1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add0~8_combout\ = (\Interpolador1|auxTrocaLinha\(4) & (\Interpolador1|Add0~7\ $ (GND))) # (!\Interpolador1|auxTrocaLinha\(4) & (!\Interpolador1|Add0~7\ & VCC))
-- \Interpolador1|Add0~9\ = CARRY((\Interpolador1|auxTrocaLinha\(4) & !\Interpolador1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|auxTrocaLinha\(4),
	datad => VCC,
	cin => \Interpolador1|Add0~7\,
	combout => \Interpolador1|Add0~8_combout\,
	cout => \Interpolador1|Add0~9\);

-- Location: LCCOMB_X9_Y11_N30
\Interpolador1|auxTrocaLinha~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxTrocaLinha~4_combout\ = (\Interpolador1|Add0~8_combout\ & ((\Interpolador1|Equal1~1_combout\) # ((\Interpolador1|Equal1~0_combout\) # (!\Interpolador1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Equal1~1_combout\,
	datab => \Interpolador1|Equal1~0_combout\,
	datac => \Interpolador1|Add0~8_combout\,
	datad => \Interpolador1|Add0~16_combout\,
	combout => \Interpolador1|auxTrocaLinha~4_combout\);

-- Location: LCFF_X10_Y11_N1
\Interpolador1|auxTrocaLinha[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|auxTrocaLinha~4_combout\,
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxTrocaLinha\(4));

-- Location: LCCOMB_X10_Y11_N14
\Interpolador1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add0~10_combout\ = (\Interpolador1|auxTrocaLinha\(5) & (!\Interpolador1|Add0~9\)) # (!\Interpolador1|auxTrocaLinha\(5) & ((\Interpolador1|Add0~9\) # (GND)))
-- \Interpolador1|Add0~11\ = CARRY((!\Interpolador1|Add0~9\) # (!\Interpolador1|auxTrocaLinha\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|auxTrocaLinha\(5),
	datad => VCC,
	cin => \Interpolador1|Add0~9\,
	combout => \Interpolador1|Add0~10_combout\,
	cout => \Interpolador1|Add0~11\);

-- Location: LCCOMB_X10_Y11_N16
\Interpolador1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add0~12_combout\ = (\Interpolador1|auxTrocaLinha\(6) & (\Interpolador1|Add0~11\ $ (GND))) # (!\Interpolador1|auxTrocaLinha\(6) & (!\Interpolador1|Add0~11\ & VCC))
-- \Interpolador1|Add0~13\ = CARRY((\Interpolador1|auxTrocaLinha\(6) & !\Interpolador1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|auxTrocaLinha\(6),
	datad => VCC,
	cin => \Interpolador1|Add0~11\,
	combout => \Interpolador1|Add0~12_combout\,
	cout => \Interpolador1|Add0~13\);

-- Location: LCCOMB_X10_Y11_N22
\Interpolador1|auxTrocaLinha~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxTrocaLinha~6_combout\ = (\Interpolador1|Add0~12_combout\ & ((\Interpolador1|Equal1~1_combout\) # ((\Interpolador1|Equal1~0_combout\) # (!\Interpolador1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Equal1~1_combout\,
	datab => \Interpolador1|Equal1~0_combout\,
	datac => \Interpolador1|Add0~16_combout\,
	datad => \Interpolador1|Add0~12_combout\,
	combout => \Interpolador1|auxTrocaLinha~6_combout\);

-- Location: LCFF_X10_Y11_N23
\Interpolador1|auxTrocaLinha[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxTrocaLinha~6_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxTrocaLinha\(6));

-- Location: LCCOMB_X10_Y11_N18
\Interpolador1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add0~14_combout\ = (\Interpolador1|auxTrocaLinha\(7) & (!\Interpolador1|Add0~13\)) # (!\Interpolador1|auxTrocaLinha\(7) & ((\Interpolador1|Add0~13\) # (GND)))
-- \Interpolador1|Add0~15\ = CARRY((!\Interpolador1|Add0~13\) # (!\Interpolador1|auxTrocaLinha\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|auxTrocaLinha\(7),
	datad => VCC,
	cin => \Interpolador1|Add0~13\,
	combout => \Interpolador1|Add0~14_combout\,
	cout => \Interpolador1|Add0~15\);

-- Location: LCCOMB_X9_Y11_N14
\Interpolador1|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Equal1~1_combout\ = (((!\Interpolador1|Add0~14_combout\) # (!\Interpolador1|Add0~8_combout\)) # (!\Interpolador1|Add0~10_combout\)) # (!\Interpolador1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add0~12_combout\,
	datab => \Interpolador1|Add0~10_combout\,
	datac => \Interpolador1|Add0~8_combout\,
	datad => \Interpolador1|Add0~14_combout\,
	combout => \Interpolador1|Equal1~1_combout\);

-- Location: LCCOMB_X9_Y11_N8
\Interpolador1|auxTrocaLinha~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxTrocaLinha~8_combout\ = (\Interpolador1|Add0~16_combout\ & ((\Interpolador1|Equal1~0_combout\) # (\Interpolador1|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|Equal1~0_combout\,
	datac => \Interpolador1|Equal1~1_combout\,
	datad => \Interpolador1|Add0~16_combout\,
	combout => \Interpolador1|auxTrocaLinha~8_combout\);

-- Location: LCFF_X9_Y11_N9
\Interpolador1|auxTrocaLinha[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxTrocaLinha~8_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxTrocaLinha\(8));

-- Location: LCCOMB_X10_Y11_N20
\Interpolador1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add0~16_combout\ = \Interpolador1|Add0~15\ $ (!\Interpolador1|auxTrocaLinha\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|auxTrocaLinha\(8),
	cin => \Interpolador1|Add0~15\,
	combout => \Interpolador1|Add0~16_combout\);

-- Location: LCCOMB_X10_Y11_N2
\Interpolador1|auxTrocaLinha~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxTrocaLinha~2_combout\ = (\Interpolador1|Add0~4_combout\ & ((\Interpolador1|Equal1~1_combout\) # ((\Interpolador1|Equal1~0_combout\) # (!\Interpolador1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Equal1~1_combout\,
	datab => \Interpolador1|Add0~4_combout\,
	datac => \Interpolador1|Add0~16_combout\,
	datad => \Interpolador1|Equal1~0_combout\,
	combout => \Interpolador1|auxTrocaLinha~2_combout\);

-- Location: LCFF_X10_Y11_N3
\Interpolador1|auxTrocaLinha[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxTrocaLinha~2_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxTrocaLinha\(2));

-- Location: LCCOMB_X10_Y11_N30
\Interpolador1|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Equal1~0_combout\ = (((!\Interpolador1|Add0~6_combout\) # (!\Interpolador1|Add0~4_combout\)) # (!\Interpolador1|Add0~0_combout\)) # (!\Interpolador1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add0~2_combout\,
	datab => \Interpolador1|Add0~0_combout\,
	datac => \Interpolador1|Add0~4_combout\,
	datad => \Interpolador1|Add0~6_combout\,
	combout => \Interpolador1|Equal1~0_combout\);

-- Location: LCCOMB_X9_Y11_N24
\Interpolador1|trocaLinha~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|trocaLinha~0_combout\ = (!\Interpolador1|Equal0~3_combout\ & (!\Interpolador1|Equal1~0_combout\ & (!\Interpolador1|Equal1~1_combout\ & \Interpolador1|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Equal0~3_combout\,
	datab => \Interpolador1|Equal1~0_combout\,
	datac => \Interpolador1|Equal1~1_combout\,
	datad => \Interpolador1|Add0~16_combout\,
	combout => \Interpolador1|trocaLinha~0_combout\);

-- Location: LCFF_X9_Y11_N25
\Interpolador1|trocaLinha\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|trocaLinha~0_combout\,
	sclr => \Interpolador1|ALT_INV_processing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|trocaLinha~regout\);

-- Location: LCCOMB_X8_Y11_N22
\newLine~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \newLine~0_combout\ = (\estado_atual~regout\ & \Interpolador1|trocaLinha~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual~regout\,
	datad => \Interpolador1|trocaLinha~regout\,
	combout => \newLine~0_combout\);

-- Location: LCFF_X8_Y13_N23
\Interpolador1|valido\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|processing~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|valido~regout\);

-- Location: LCCOMB_X8_Y13_N22
\valido~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \valido~0_combout\ = (\estado_atual~regout\ & \Interpolador1|valido~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual~regout\,
	datac => \Interpolador1|valido~regout\,
	combout => \valido~0_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sampleIn[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sampleIn(0),
	combout => \sampleIn~combout\(0));

-- Location: LCCOMB_X12_Y11_N12
\Interpolador1|auxEndereco[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxEndereco[0]~10_combout\ = \Interpolador1|auxEndereco\(0) $ (VCC)
-- \Interpolador1|auxEndereco[0]~11\ = CARRY(\Interpolador1|auxEndereco\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|auxEndereco\(0),
	datad => VCC,
	combout => \Interpolador1|auxEndereco[0]~10_combout\,
	cout => \Interpolador1|auxEndereco[0]~11\);

-- Location: LCCOMB_X9_Y13_N22
\Interpolador1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add1~10_combout\ = (\Interpolador1|Add1~9\ & ((\auxInicio~combout\) # ((\Interpolador1|auxInicioImagem\(5))))) # (!\Interpolador1|Add1~9\ & (((!\auxInicio~combout\ & !\Interpolador1|auxInicioImagem\(5))) # (GND)))
-- \Interpolador1|Add1~11\ = CARRY((\auxInicio~combout\) # ((\Interpolador1|auxInicioImagem\(5)) # (!\Interpolador1|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auxInicio~combout\,
	datab => \Interpolador1|auxInicioImagem\(5),
	datad => VCC,
	cin => \Interpolador1|Add1~9\,
	combout => \Interpolador1|Add1~10_combout\,
	cout => \Interpolador1|Add1~11\);

-- Location: LCCOMB_X9_Y13_N6
\Interpolador1|auxInicioImagem[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxInicioImagem[5]~7_combout\ = !\Interpolador1|Add1~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|Add1~10_combout\,
	combout => \Interpolador1|auxInicioImagem[5]~7_combout\);

-- Location: LCFF_X9_Y13_N7
\Interpolador1|auxInicioImagem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxInicioImagem[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxInicioImagem\(5));

-- Location: LCCOMB_X9_Y13_N24
\Interpolador1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add1~12_combout\ = (\Interpolador1|Add1~11\ & (!\auxInicio~combout\ & (!\Interpolador1|auxInicioImagem\(6) & VCC))) # (!\Interpolador1|Add1~11\ & ((((!\auxInicio~combout\ & !\Interpolador1|auxInicioImagem\(6))))))
-- \Interpolador1|Add1~13\ = CARRY((!\auxInicio~combout\ & (!\Interpolador1|auxInicioImagem\(6) & !\Interpolador1|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auxInicio~combout\,
	datab => \Interpolador1|auxInicioImagem\(6),
	datad => VCC,
	cin => \Interpolador1|Add1~11\,
	combout => \Interpolador1|Add1~12_combout\,
	cout => \Interpolador1|Add1~13\);

-- Location: LCCOMB_X9_Y13_N8
\Interpolador1|auxInicioImagem[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxInicioImagem[6]~8_combout\ = !\Interpolador1|Add1~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Interpolador1|Add1~12_combout\,
	combout => \Interpolador1|auxInicioImagem[6]~8_combout\);

-- Location: LCFF_X9_Y13_N9
\Interpolador1|auxInicioImagem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxInicioImagem[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxInicioImagem\(6));

-- Location: LCCOMB_X9_Y13_N26
\Interpolador1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add1~14_combout\ = (\Interpolador1|Add1~13\ & ((\auxInicio~combout\) # ((\Interpolador1|auxInicioImagem\(7))))) # (!\Interpolador1|Add1~13\ & (((!\auxInicio~combout\ & !\Interpolador1|auxInicioImagem\(7))) # (GND)))
-- \Interpolador1|Add1~15\ = CARRY((\auxInicio~combout\) # ((\Interpolador1|auxInicioImagem\(7)) # (!\Interpolador1|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auxInicio~combout\,
	datab => \Interpolador1|auxInicioImagem\(7),
	datad => VCC,
	cin => \Interpolador1|Add1~13\,
	combout => \Interpolador1|Add1~14_combout\,
	cout => \Interpolador1|Add1~15\);

-- Location: LCCOMB_X9_Y13_N2
\Interpolador1|auxInicioImagem[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxInicioImagem[7]~9_combout\ = !\Interpolador1|Add1~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|Add1~14_combout\,
	combout => \Interpolador1|auxInicioImagem[7]~9_combout\);

-- Location: LCFF_X9_Y13_N3
\Interpolador1|auxInicioImagem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxInicioImagem[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxInicioImagem\(7));

-- Location: LCCOMB_X9_Y13_N28
\Interpolador1|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add1~16_combout\ = \Interpolador1|Add1~15\ $ (((\auxInicio~combout\) # (\Interpolador1|auxInicioImagem\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auxInicio~combout\,
	datad => \Interpolador1|auxInicioImagem\(8),
	cin => \Interpolador1|Add1~15\,
	combout => \Interpolador1|Add1~16_combout\);

-- Location: LCCOMB_X9_Y13_N10
\Interpolador1|auxInicioImagem[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxInicioImagem[8]~10_combout\ = !\Interpolador1|Add1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|Add1~16_combout\,
	combout => \Interpolador1|auxInicioImagem[8]~10_combout\);

-- Location: LCFF_X9_Y13_N11
\Interpolador1|auxInicioImagem[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxInicioImagem[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxInicioImagem\(8));

-- Location: LCCOMB_X8_Y13_N26
\Interpolador1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Equal0~2_combout\ = (!\Interpolador1|auxInicioImagem\(8) & (!\Interpolador1|auxInicioImagem\(6) & !\Interpolador1|auxInicioImagem\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|auxInicioImagem\(8),
	datac => \Interpolador1|auxInicioImagem\(6),
	datad => \Interpolador1|auxInicioImagem\(7),
	combout => \Interpolador1|Equal0~2_combout\);

-- Location: LCCOMB_X9_Y11_N6
\Interpolador1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Equal0~3_combout\ = (\Interpolador1|Equal0~0_combout\ & (\Interpolador1|Equal0~2_combout\ & \Interpolador1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Equal0~0_combout\,
	datac => \Interpolador1|Equal0~2_combout\,
	datad => \Interpolador1|Equal0~1_combout\,
	combout => \Interpolador1|Equal0~3_combout\);

-- Location: LCFF_X12_Y11_N13
\Interpolador1|auxEndereco[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxEndereco[0]~10_combout\,
	sclr => \Interpolador1|Equal0~3_combout\,
	ena => \Interpolador1|processing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxEndereco\(0));

-- Location: LCCOMB_X12_Y11_N8
\Interpolador1|endereco[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|endereco[0]~feeder_combout\ = \Interpolador1|auxEndereco\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|auxEndereco\(0),
	combout => \Interpolador1|endereco[0]~feeder_combout\);

-- Location: LCFF_X12_Y11_N9
\Interpolador1|endereco[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|endereco[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|endereco\(0));

-- Location: LCCOMB_X12_Y11_N14
\Interpolador1|auxEndereco[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxEndereco[1]~12_combout\ = (\Interpolador1|auxEndereco\(1) & (!\Interpolador1|auxEndereco[0]~11\)) # (!\Interpolador1|auxEndereco\(1) & ((\Interpolador1|auxEndereco[0]~11\) # (GND)))
-- \Interpolador1|auxEndereco[1]~13\ = CARRY((!\Interpolador1|auxEndereco[0]~11\) # (!\Interpolador1|auxEndereco\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|auxEndereco\(1),
	datad => VCC,
	cin => \Interpolador1|auxEndereco[0]~11\,
	combout => \Interpolador1|auxEndereco[1]~12_combout\,
	cout => \Interpolador1|auxEndereco[1]~13\);

-- Location: LCFF_X12_Y11_N15
\Interpolador1|auxEndereco[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxEndereco[1]~12_combout\,
	sclr => \Interpolador1|Equal0~3_combout\,
	ena => \Interpolador1|processing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxEndereco\(1));

-- Location: LCCOMB_X12_Y11_N2
\Interpolador1|endereco[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|endereco[1]~feeder_combout\ = \Interpolador1|auxEndereco\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Interpolador1|auxEndereco\(1),
	combout => \Interpolador1|endereco[1]~feeder_combout\);

-- Location: LCFF_X12_Y11_N3
\Interpolador1|endereco[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|endereco[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|endereco\(1));

-- Location: LCCOMB_X12_Y11_N16
\Interpolador1|auxEndereco[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxEndereco[2]~14_combout\ = (\Interpolador1|auxEndereco\(2) & (\Interpolador1|auxEndereco[1]~13\ $ (GND))) # (!\Interpolador1|auxEndereco\(2) & (!\Interpolador1|auxEndereco[1]~13\ & VCC))
-- \Interpolador1|auxEndereco[2]~15\ = CARRY((\Interpolador1|auxEndereco\(2) & !\Interpolador1|auxEndereco[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|auxEndereco\(2),
	datad => VCC,
	cin => \Interpolador1|auxEndereco[1]~13\,
	combout => \Interpolador1|auxEndereco[2]~14_combout\,
	cout => \Interpolador1|auxEndereco[2]~15\);

-- Location: LCFF_X12_Y11_N17
\Interpolador1|auxEndereco[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxEndereco[2]~14_combout\,
	sclr => \Interpolador1|Equal0~3_combout\,
	ena => \Interpolador1|processing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxEndereco\(2));

-- Location: LCCOMB_X12_Y11_N0
\Interpolador1|endereco[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|endereco[2]~feeder_combout\ = \Interpolador1|auxEndereco\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Interpolador1|auxEndereco\(2),
	combout => \Interpolador1|endereco[2]~feeder_combout\);

-- Location: LCFF_X12_Y11_N1
\Interpolador1|endereco[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|endereco[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|endereco\(2));

-- Location: LCCOMB_X12_Y11_N18
\Interpolador1|auxEndereco[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxEndereco[3]~16_combout\ = (\Interpolador1|auxEndereco\(3) & (!\Interpolador1|auxEndereco[2]~15\)) # (!\Interpolador1|auxEndereco\(3) & ((\Interpolador1|auxEndereco[2]~15\) # (GND)))
-- \Interpolador1|auxEndereco[3]~17\ = CARRY((!\Interpolador1|auxEndereco[2]~15\) # (!\Interpolador1|auxEndereco\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|auxEndereco\(3),
	datad => VCC,
	cin => \Interpolador1|auxEndereco[2]~15\,
	combout => \Interpolador1|auxEndereco[3]~16_combout\,
	cout => \Interpolador1|auxEndereco[3]~17\);

-- Location: LCFF_X12_Y11_N19
\Interpolador1|auxEndereco[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxEndereco[3]~16_combout\,
	sclr => \Interpolador1|Equal0~3_combout\,
	ena => \Interpolador1|processing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxEndereco\(3));

-- Location: LCFF_X10_Y11_N13
\Interpolador1|endereco[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|auxEndereco\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|endereco\(3));

-- Location: LCCOMB_X12_Y11_N20
\Interpolador1|auxEndereco[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxEndereco[4]~18_combout\ = (\Interpolador1|auxEndereco\(4) & (\Interpolador1|auxEndereco[3]~17\ $ (GND))) # (!\Interpolador1|auxEndereco\(4) & (!\Interpolador1|auxEndereco[3]~17\ & VCC))
-- \Interpolador1|auxEndereco[4]~19\ = CARRY((\Interpolador1|auxEndereco\(4) & !\Interpolador1|auxEndereco[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|auxEndereco\(4),
	datad => VCC,
	cin => \Interpolador1|auxEndereco[3]~17\,
	combout => \Interpolador1|auxEndereco[4]~18_combout\,
	cout => \Interpolador1|auxEndereco[4]~19\);

-- Location: LCFF_X12_Y11_N21
\Interpolador1|auxEndereco[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxEndereco[4]~18_combout\,
	sclr => \Interpolador1|Equal0~3_combout\,
	ena => \Interpolador1|processing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxEndereco\(4));

-- Location: LCCOMB_X12_Y11_N6
\Interpolador1|endereco[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|endereco[4]~feeder_combout\ = \Interpolador1|auxEndereco\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Interpolador1|auxEndereco\(4),
	combout => \Interpolador1|endereco[4]~feeder_combout\);

-- Location: LCFF_X12_Y11_N7
\Interpolador1|endereco[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|endereco[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|endereco\(4));

-- Location: LCCOMB_X12_Y11_N22
\Interpolador1|auxEndereco[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxEndereco[5]~20_combout\ = (\Interpolador1|auxEndereco\(5) & (!\Interpolador1|auxEndereco[4]~19\)) # (!\Interpolador1|auxEndereco\(5) & ((\Interpolador1|auxEndereco[4]~19\) # (GND)))
-- \Interpolador1|auxEndereco[5]~21\ = CARRY((!\Interpolador1|auxEndereco[4]~19\) # (!\Interpolador1|auxEndereco\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|auxEndereco\(5),
	datad => VCC,
	cin => \Interpolador1|auxEndereco[4]~19\,
	combout => \Interpolador1|auxEndereco[5]~20_combout\,
	cout => \Interpolador1|auxEndereco[5]~21\);

-- Location: LCFF_X12_Y11_N23
\Interpolador1|auxEndereco[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxEndereco[5]~20_combout\,
	sclr => \Interpolador1|Equal0~3_combout\,
	ena => \Interpolador1|processing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxEndereco\(5));

-- Location: LCCOMB_X12_Y11_N4
\Interpolador1|endereco[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|endereco[5]~feeder_combout\ = \Interpolador1|auxEndereco\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|auxEndereco\(5),
	combout => \Interpolador1|endereco[5]~feeder_combout\);

-- Location: LCFF_X12_Y11_N5
\Interpolador1|endereco[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|endereco[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|endereco\(5));

-- Location: LCCOMB_X12_Y11_N24
\Interpolador1|auxEndereco[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxEndereco[6]~22_combout\ = (\Interpolador1|auxEndereco\(6) & (\Interpolador1|auxEndereco[5]~21\ $ (GND))) # (!\Interpolador1|auxEndereco\(6) & (!\Interpolador1|auxEndereco[5]~21\ & VCC))
-- \Interpolador1|auxEndereco[6]~23\ = CARRY((\Interpolador1|auxEndereco\(6) & !\Interpolador1|auxEndereco[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|auxEndereco\(6),
	datad => VCC,
	cin => \Interpolador1|auxEndereco[5]~21\,
	combout => \Interpolador1|auxEndereco[6]~22_combout\,
	cout => \Interpolador1|auxEndereco[6]~23\);

-- Location: LCFF_X12_Y11_N25
\Interpolador1|auxEndereco[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxEndereco[6]~22_combout\,
	sclr => \Interpolador1|Equal0~3_combout\,
	ena => \Interpolador1|processing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxEndereco\(6));

-- Location: LCFF_X10_Y11_N21
\Interpolador1|endereco[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|auxEndereco\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|endereco\(6));

-- Location: LCCOMB_X12_Y11_N26
\Interpolador1|auxEndereco[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxEndereco[7]~24_combout\ = (\Interpolador1|auxEndereco\(7) & (!\Interpolador1|auxEndereco[6]~23\)) # (!\Interpolador1|auxEndereco\(7) & ((\Interpolador1|auxEndereco[6]~23\) # (GND)))
-- \Interpolador1|auxEndereco[7]~25\ = CARRY((!\Interpolador1|auxEndereco[6]~23\) # (!\Interpolador1|auxEndereco\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|auxEndereco\(7),
	datad => VCC,
	cin => \Interpolador1|auxEndereco[6]~23\,
	combout => \Interpolador1|auxEndereco[7]~24_combout\,
	cout => \Interpolador1|auxEndereco[7]~25\);

-- Location: LCFF_X12_Y11_N27
\Interpolador1|auxEndereco[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxEndereco[7]~24_combout\,
	sclr => \Interpolador1|Equal0~3_combout\,
	ena => \Interpolador1|processing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxEndereco\(7));

-- Location: LCCOMB_X12_Y11_N10
\Interpolador1|endereco[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|endereco[7]~feeder_combout\ = \Interpolador1|auxEndereco\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|auxEndereco\(7),
	combout => \Interpolador1|endereco[7]~feeder_combout\);

-- Location: LCFF_X12_Y11_N11
\Interpolador1|endereco[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|endereco[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|endereco\(7));

-- Location: LCCOMB_X12_Y11_N28
\Interpolador1|auxEndereco[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxEndereco[8]~26_combout\ = (\Interpolador1|auxEndereco\(8) & (\Interpolador1|auxEndereco[7]~25\ $ (GND))) # (!\Interpolador1|auxEndereco\(8) & (!\Interpolador1|auxEndereco[7]~25\ & VCC))
-- \Interpolador1|auxEndereco[8]~27\ = CARRY((\Interpolador1|auxEndereco\(8) & !\Interpolador1|auxEndereco[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|auxEndereco\(8),
	datad => VCC,
	cin => \Interpolador1|auxEndereco[7]~25\,
	combout => \Interpolador1|auxEndereco[8]~26_combout\,
	cout => \Interpolador1|auxEndereco[8]~27\);

-- Location: LCFF_X12_Y11_N29
\Interpolador1|auxEndereco[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxEndereco[8]~26_combout\,
	sclr => \Interpolador1|Equal0~3_combout\,
	ena => \Interpolador1|processing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxEndereco\(8));

-- Location: LCCOMB_X13_Y11_N0
\Interpolador1|endereco[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|endereco[8]~feeder_combout\ = \Interpolador1|auxEndereco\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|auxEndereco\(8),
	combout => \Interpolador1|endereco[8]~feeder_combout\);

-- Location: LCFF_X13_Y11_N1
\Interpolador1|endereco[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|endereco[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|endereco\(8));

-- Location: LCCOMB_X12_Y11_N30
\Interpolador1|auxEndereco[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|auxEndereco[9]~28_combout\ = \Interpolador1|auxEndereco[8]~27\ $ (\Interpolador1|auxEndereco\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|auxEndereco\(9),
	cin => \Interpolador1|auxEndereco[8]~27\,
	combout => \Interpolador1|auxEndereco[9]~28_combout\);

-- Location: LCFF_X12_Y11_N31
\Interpolador1|auxEndereco[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|auxEndereco[9]~28_combout\,
	sclr => \Interpolador1|Equal0~3_combout\,
	ena => \Interpolador1|processing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|auxEndereco\(9));

-- Location: LCFF_X10_Y11_N9
\Interpolador1|endereco[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|auxEndereco\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|endereco\(9));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sampleIn[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sampleIn(1),
	combout => \sampleIn~combout\(1));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sampleIn[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sampleIn(2),
	combout => \sampleIn~combout\(2));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sampleIn[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sampleIn(3),
	combout => \sampleIn~combout\(3));

-- Location: M4K_X11_Y12
\RegBank|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:RegBank|altsyncram:altsyncram_component|altsyncram_e7a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \RegBank|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RegBank|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RegBank|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X8_Y12_N25
\Passador1|saida0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \RegBank|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida0\(0));

-- Location: LCFF_X9_Y12_N19
\Interpolador1|EE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida0\(0),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|EE\(0));

-- Location: LCCOMB_X9_Y12_N0
\sampleOut1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut1~0_combout\ = (\Interpolador1|EE\(0) & \estado_atual~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|EE\(0),
	datad => \estado_atual~regout\,
	combout => \sampleOut1~0_combout\);

-- Location: LCFF_X10_Y12_N27
\Passador1|saida0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \RegBank|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida0\(1));

-- Location: LCCOMB_X9_Y12_N28
\Interpolador1|EE[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|EE[1]~feeder_combout\ = \Passador1|saida0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida0\(1),
	combout => \Interpolador1|EE[1]~feeder_combout\);

-- Location: LCFF_X9_Y12_N29
\Interpolador1|EE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|EE[1]~feeder_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|EE\(1));

-- Location: LCCOMB_X10_Y12_N10
\sampleOut1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut1~1_combout\ = (\estado_atual~regout\ & \Interpolador1|EE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual~regout\,
	datad => \Interpolador1|EE\(1),
	combout => \sampleOut1~1_combout\);

-- Location: LCFF_X10_Y12_N9
\Passador1|saida0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \RegBank|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida0\(2));

-- Location: LCFF_X9_Y12_N1
\Interpolador1|EE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida0\(2),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|EE\(2));

-- Location: LCCOMB_X8_Y12_N28
\sampleOut1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut1~2_combout\ = (\Interpolador1|EE\(2) & \estado_atual~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|EE\(2),
	datad => \estado_atual~regout\,
	combout => \sampleOut1~2_combout\);

-- Location: LCFF_X10_Y12_N17
\Passador1|saida0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \RegBank|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida0\(3));

-- Location: LCFF_X9_Y12_N21
\Interpolador1|EE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida0\(3),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|EE\(3));

-- Location: LCCOMB_X9_Y12_N30
\sampleOut1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut1~3_combout\ = (\Interpolador1|EE\(3) & \estado_atual~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|EE\(3),
	datad => \estado_atual~regout\,
	combout => \sampleOut1~3_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sampleIn[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sampleIn(4),
	combout => \sampleIn~combout\(4));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sampleIn[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sampleIn(5),
	combout => \sampleIn~combout\(5));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sampleIn[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sampleIn(6),
	combout => \sampleIn~combout\(6));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sampleIn[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sampleIn(7),
	combout => \sampleIn~combout\(7));

-- Location: M4K_X11_Y11
\RegBank|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:RegBank|altsyncram:altsyncram_component|altsyncram_e7a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \RegBank|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \RegBank|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RegBank|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X9_Y11_N12
\Passador1|saida0[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida0[4]~feeder_combout\ = \RegBank|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegBank|altsyncram_component|auto_generated|q_a\(4),
	combout => \Passador1|saida0[4]~feeder_combout\);

-- Location: LCFF_X9_Y11_N13
\Passador1|saida0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida0[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida0\(4));

-- Location: LCFF_X9_Y12_N25
\Interpolador1|EE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida0\(4),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|EE\(4));

-- Location: LCCOMB_X10_Y12_N6
\sampleOut1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut1~4_combout\ = (\estado_atual~regout\ & \Interpolador1|EE\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual~regout\,
	datad => \Interpolador1|EE\(4),
	combout => \sampleOut1~4_combout\);

-- Location: LCFF_X10_Y12_N31
\Passador1|saida0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \RegBank|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida0\(5));

-- Location: LCFF_X9_Y12_N23
\Interpolador1|EE[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida0\(5),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|EE\(5));

-- Location: LCCOMB_X8_Y12_N26
\sampleOut1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut1~5_combout\ = (\Interpolador1|EE\(5) & \estado_atual~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|EE\(5),
	datad => \estado_atual~regout\,
	combout => \sampleOut1~5_combout\);

-- Location: LCFF_X10_Y11_N11
\Passador1|saida0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \RegBank|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida0\(6));

-- Location: LCFF_X10_Y12_N3
\Interpolador1|EE[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida0\(6),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|EE\(6));

-- Location: LCCOMB_X10_Y12_N4
\sampleOut1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut1~6_combout\ = (\estado_atual~regout\ & \Interpolador1|EE\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual~regout\,
	datad => \Interpolador1|EE\(6),
	combout => \sampleOut1~6_combout\);

-- Location: LCCOMB_X9_Y11_N10
\Passador1|saida0[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida0[7]~feeder_combout\ = \RegBank|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegBank|altsyncram_component|auto_generated|q_a\(7),
	combout => \Passador1|saida0[7]~feeder_combout\);

-- Location: LCFF_X9_Y11_N11
\Passador1|saida0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida0[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida0\(7));

-- Location: LCFF_X9_Y12_N31
\Interpolador1|EE[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida0\(7),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|EE\(7));

-- Location: LCCOMB_X8_Y12_N30
\sampleOut1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut1~7_combout\ = (\estado_atual~regout\ & \Interpolador1|EE\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual~regout\,
	datad => \Interpolador1|EE\(7),
	combout => \sampleOut1~7_combout\);

-- Location: LCFF_X10_Y12_N19
\Passador1|saida1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida0\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida1\(5));

-- Location: LCCOMB_X9_Y11_N22
\Passador1|saida1[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida1[4]~feeder_combout\ = \Passador1|saida0\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida0\(4),
	combout => \Passador1|saida1[4]~feeder_combout\);

-- Location: LCFF_X9_Y11_N23
\Passador1|saida1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida1[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida1\(4));

-- Location: LCFF_X10_Y12_N5
\Passador1|saida1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida0\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida1\(2));

-- Location: LCFF_X10_Y12_N1
\Passador1|saida1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida0\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida1\(3));

-- Location: LCCOMB_X10_Y12_N14
\Interpolador1|FF[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|FF[3]~11_combout\ = (\Passador1|saida1\(1) & ((\Passador1|saida1\(3) & (\Interpolador1|FF[2]~10\ & VCC)) # (!\Passador1|saida1\(3) & (!\Interpolador1|FF[2]~10\)))) # (!\Passador1|saida1\(1) & ((\Passador1|saida1\(3) & 
-- (!\Interpolador1|FF[2]~10\)) # (!\Passador1|saida1\(3) & ((\Interpolador1|FF[2]~10\) # (GND)))))
-- \Interpolador1|FF[3]~12\ = CARRY((\Passador1|saida1\(1) & (!\Passador1|saida1\(3) & !\Interpolador1|FF[2]~10\)) # (!\Passador1|saida1\(1) & ((!\Interpolador1|FF[2]~10\) # (!\Passador1|saida1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida1\(1),
	datab => \Passador1|saida1\(3),
	datad => VCC,
	cin => \Interpolador1|FF[2]~10\,
	combout => \Interpolador1|FF[3]~11_combout\,
	cout => \Interpolador1|FF[3]~12\);

-- Location: LCCOMB_X10_Y12_N16
\Interpolador1|FF[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|FF[4]~13_combout\ = ((\Passador1|saida1\(4) $ (\Passador1|saida1\(2) $ (!\Interpolador1|FF[3]~12\)))) # (GND)
-- \Interpolador1|FF[4]~14\ = CARRY((\Passador1|saida1\(4) & ((\Passador1|saida1\(2)) # (!\Interpolador1|FF[3]~12\))) # (!\Passador1|saida1\(4) & (\Passador1|saida1\(2) & !\Interpolador1|FF[3]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida1\(4),
	datab => \Passador1|saida1\(2),
	datad => VCC,
	cin => \Interpolador1|FF[3]~12\,
	combout => \Interpolador1|FF[4]~13_combout\,
	cout => \Interpolador1|FF[4]~14\);

-- Location: LCCOMB_X10_Y12_N20
\Interpolador1|FF[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|FF[6]~17_combout\ = ((\Passador1|saida1\(6) $ (\Passador1|saida1\(4) $ (!\Interpolador1|FF[5]~16\)))) # (GND)
-- \Interpolador1|FF[6]~18\ = CARRY((\Passador1|saida1\(6) & ((\Passador1|saida1\(4)) # (!\Interpolador1|FF[5]~16\))) # (!\Passador1|saida1\(6) & (\Passador1|saida1\(4) & !\Interpolador1|FF[5]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida1\(6),
	datab => \Passador1|saida1\(4),
	datad => VCC,
	cin => \Interpolador1|FF[5]~16\,
	combout => \Interpolador1|FF[6]~17_combout\,
	cout => \Interpolador1|FF[6]~18\);

-- Location: LCCOMB_X10_Y12_N24
\Interpolador1|FF[8]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|FF[8]~21_combout\ = (\Passador1|saida1\(6) & (\Interpolador1|FF[7]~20\ $ (GND))) # (!\Passador1|saida1\(6) & (!\Interpolador1|FF[7]~20\ & VCC))
-- \Interpolador1|FF[8]~22\ = CARRY((\Passador1|saida1\(6) & !\Interpolador1|FF[7]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida1\(6),
	datad => VCC,
	cin => \Interpolador1|FF[7]~20\,
	combout => \Interpolador1|FF[8]~21_combout\,
	cout => \Interpolador1|FF[8]~22\);

-- Location: LCCOMB_X10_Y12_N26
\Interpolador1|FF[9]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|FF[9]~23_combout\ = (\Passador1|saida1\(7) & (!\Interpolador1|FF[8]~22\)) # (!\Passador1|saida1\(7) & ((\Interpolador1|FF[8]~22\) # (GND)))
-- \Interpolador1|FF[9]~24\ = CARRY((!\Interpolador1|FF[8]~22\) # (!\Passador1|saida1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida1\(7),
	datad => VCC,
	cin => \Interpolador1|FF[8]~22\,
	combout => \Interpolador1|FF[9]~23_combout\,
	cout => \Interpolador1|FF[9]~24\);

-- Location: LCCOMB_X10_Y12_N28
\Interpolador1|FF[10]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|FF[10]~25_combout\ = !\Interpolador1|FF[9]~24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Interpolador1|FF[9]~24\,
	combout => \Interpolador1|FF[10]~25_combout\);

-- Location: LCFF_X10_Y12_N29
\Interpolador1|FF[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|FF[10]~25_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|FF\(10));

-- Location: LCFF_X9_Y12_N27
\Interpolador1|FF[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|FF[9]~23_combout\,
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|FF\(9));

-- Location: LCFF_X10_Y12_N25
\Interpolador1|FF[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|FF[8]~21_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|FF\(8));

-- Location: LCFF_X9_Y12_N15
\Interpolador1|FF[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|FF[6]~17_combout\,
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|FF\(6));

-- Location: LCFF_X9_Y12_N11
\Interpolador1|FF[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|FF[4]~13_combout\,
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|FF\(4));

-- Location: LCFF_X9_Y12_N9
\Interpolador1|FF[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|FF[3]~11_combout\,
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|FF\(3));

-- Location: LCFF_X10_Y12_N13
\Passador1|saida1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida0\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida1\(1));

-- Location: LCFF_X9_Y12_N5
\Interpolador1|FF[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida1\(1),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|FF\(1));

-- Location: LCCOMB_X9_Y12_N8
\Interpolador1|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add6~6_combout\ = (\Interpolador1|EE\(3) & ((\Interpolador1|FF\(3) & (!\Interpolador1|Add6~5\)) # (!\Interpolador1|FF\(3) & (\Interpolador1|Add6~5\ & VCC)))) # (!\Interpolador1|EE\(3) & ((\Interpolador1|FF\(3) & ((\Interpolador1|Add6~5\) # 
-- (GND))) # (!\Interpolador1|FF\(3) & (!\Interpolador1|Add6~5\))))
-- \Interpolador1|Add6~7\ = CARRY((\Interpolador1|EE\(3) & (\Interpolador1|FF\(3) & !\Interpolador1|Add6~5\)) # (!\Interpolador1|EE\(3) & ((\Interpolador1|FF\(3)) # (!\Interpolador1|Add6~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|EE\(3),
	datab => \Interpolador1|FF\(3),
	datad => VCC,
	cin => \Interpolador1|Add6~5\,
	combout => \Interpolador1|Add6~6_combout\,
	cout => \Interpolador1|Add6~7\);

-- Location: LCCOMB_X9_Y12_N10
\Interpolador1|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add6~8_combout\ = ((\Interpolador1|EE\(4) $ (\Interpolador1|FF\(4) $ (\Interpolador1|Add6~7\)))) # (GND)
-- \Interpolador1|Add6~9\ = CARRY((\Interpolador1|EE\(4) & ((!\Interpolador1|Add6~7\) # (!\Interpolador1|FF\(4)))) # (!\Interpolador1|EE\(4) & (!\Interpolador1|FF\(4) & !\Interpolador1|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|EE\(4),
	datab => \Interpolador1|FF\(4),
	datad => VCC,
	cin => \Interpolador1|Add6~7\,
	combout => \Interpolador1|Add6~8_combout\,
	cout => \Interpolador1|Add6~9\);

-- Location: LCCOMB_X9_Y12_N12
\Interpolador1|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add6~10_combout\ = (\Interpolador1|FF\(5) & ((\Interpolador1|EE\(5) & (!\Interpolador1|Add6~9\)) # (!\Interpolador1|EE\(5) & ((\Interpolador1|Add6~9\) # (GND))))) # (!\Interpolador1|FF\(5) & ((\Interpolador1|EE\(5) & (\Interpolador1|Add6~9\ 
-- & VCC)) # (!\Interpolador1|EE\(5) & (!\Interpolador1|Add6~9\))))
-- \Interpolador1|Add6~11\ = CARRY((\Interpolador1|FF\(5) & ((!\Interpolador1|Add6~9\) # (!\Interpolador1|EE\(5)))) # (!\Interpolador1|FF\(5) & (!\Interpolador1|EE\(5) & !\Interpolador1|Add6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|FF\(5),
	datab => \Interpolador1|EE\(5),
	datad => VCC,
	cin => \Interpolador1|Add6~9\,
	combout => \Interpolador1|Add6~10_combout\,
	cout => \Interpolador1|Add6~11\);

-- Location: LCCOMB_X9_Y12_N14
\Interpolador1|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add6~12_combout\ = ((\Interpolador1|EE\(6) $ (\Interpolador1|FF\(6) $ (\Interpolador1|Add6~11\)))) # (GND)
-- \Interpolador1|Add6~13\ = CARRY((\Interpolador1|EE\(6) & ((!\Interpolador1|Add6~11\) # (!\Interpolador1|FF\(6)))) # (!\Interpolador1|EE\(6) & (!\Interpolador1|FF\(6) & !\Interpolador1|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|EE\(6),
	datab => \Interpolador1|FF\(6),
	datad => VCC,
	cin => \Interpolador1|Add6~11\,
	combout => \Interpolador1|Add6~12_combout\,
	cout => \Interpolador1|Add6~13\);

-- Location: LCCOMB_X9_Y12_N18
\Interpolador1|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add6~16_combout\ = (\Interpolador1|FF\(8) & (!\Interpolador1|Add6~15\ & VCC)) # (!\Interpolador1|FF\(8) & (\Interpolador1|Add6~15\ $ (GND)))
-- \Interpolador1|Add6~17\ = CARRY((!\Interpolador1|FF\(8) & !\Interpolador1|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|FF\(8),
	datad => VCC,
	cin => \Interpolador1|Add6~15\,
	combout => \Interpolador1|Add6~16_combout\,
	cout => \Interpolador1|Add6~17\);

-- Location: LCCOMB_X9_Y12_N20
\Interpolador1|Add6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add6~18_combout\ = (\Interpolador1|FF\(9) & ((\Interpolador1|Add6~17\) # (GND))) # (!\Interpolador1|FF\(9) & (!\Interpolador1|Add6~17\))
-- \Interpolador1|Add6~19\ = CARRY((\Interpolador1|FF\(9)) # (!\Interpolador1|Add6~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|FF\(9),
	datad => VCC,
	cin => \Interpolador1|Add6~17\,
	combout => \Interpolador1|Add6~18_combout\,
	cout => \Interpolador1|Add6~19\);

-- Location: LCCOMB_X9_Y12_N22
\Interpolador1|Add6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add6~20_combout\ = (\Interpolador1|FF\(10) & (!\Interpolador1|Add6~19\ & VCC)) # (!\Interpolador1|FF\(10) & (\Interpolador1|Add6~19\ $ (GND)))
-- \Interpolador1|Add6~21\ = CARRY((!\Interpolador1|FF\(10) & !\Interpolador1|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|FF\(10),
	datad => VCC,
	cin => \Interpolador1|Add6~19\,
	combout => \Interpolador1|Add6~20_combout\,
	cout => \Interpolador1|Add6~21\);

-- Location: LCCOMB_X9_Y12_N24
\Interpolador1|Add6~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add6~22_combout\ = !\Interpolador1|Add6~21\
-- \Interpolador1|Add6~23\ = CARRY(!\Interpolador1|Add6~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Interpolador1|Add6~21\,
	combout => \Interpolador1|Add6~22_combout\,
	cout => \Interpolador1|Add6~23\);

-- Location: LCCOMB_X9_Y12_N26
\Interpolador1|Add6~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add6~24_combout\ = \Interpolador1|Add6~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Interpolador1|Add6~23\,
	combout => \Interpolador1|Add6~24_combout\);

-- Location: LCCOMB_X9_Y11_N16
\Passador1|saida1[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida1[7]~feeder_combout\ = \Passador1|saida0\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Passador1|saida0\(7),
	combout => \Passador1|saida1[7]~feeder_combout\);

-- Location: LCFF_X9_Y11_N17
\Passador1|saida1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida1[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida1\(7));

-- Location: LCCOMB_X8_Y11_N30
\Passador1|saida2[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida2[7]~feeder_combout\ = \Passador1|saida1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida1\(7),
	combout => \Passador1|saida2[7]~feeder_combout\);

-- Location: LCFF_X8_Y11_N31
\Passador1|saida2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida2[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida2\(7));

-- Location: LCCOMB_X9_Y11_N28
\Passador1|saida2[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida2[4]~feeder_combout\ = \Passador1|saida1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida1\(4),
	combout => \Passador1|saida2[4]~feeder_combout\);

-- Location: LCFF_X9_Y11_N29
\Passador1|saida2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida2[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida2\(4));

-- Location: LCFF_X10_Y11_N5
\Passador1|saida2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida1\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida2\(3));

-- Location: LCFF_X8_Y11_N23
\Passador1|saida2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida1\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida2\(2));

-- Location: LCFF_X8_Y12_N23
\Passador1|saida1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida0\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida1\(0));

-- Location: LCFF_X8_Y12_N29
\Passador1|saida2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida1\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida2\(0));

-- Location: LCCOMB_X8_Y11_N6
\Interpolador1|GG[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|GG[7]~15_combout\ = (\Passador1|saida2\(5) & ((\Passador1|saida2\(3) & (\Interpolador1|GG[6]~14\ & VCC)) # (!\Passador1|saida2\(3) & (!\Interpolador1|GG[6]~14\)))) # (!\Passador1|saida2\(5) & ((\Passador1|saida2\(3) & 
-- (!\Interpolador1|GG[6]~14\)) # (!\Passador1|saida2\(3) & ((\Interpolador1|GG[6]~14\) # (GND)))))
-- \Interpolador1|GG[7]~16\ = CARRY((\Passador1|saida2\(5) & (!\Passador1|saida2\(3) & !\Interpolador1|GG[6]~14\)) # (!\Passador1|saida2\(5) & ((!\Interpolador1|GG[6]~14\) # (!\Passador1|saida2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida2\(5),
	datab => \Passador1|saida2\(3),
	datad => VCC,
	cin => \Interpolador1|GG[6]~14\,
	combout => \Interpolador1|GG[7]~15_combout\,
	cout => \Interpolador1|GG[7]~16\);

-- Location: LCCOMB_X8_Y11_N16
\Interpolador1|GG[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|GG[12]~25_combout\ = !\Interpolador1|GG[11]~24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Interpolador1|GG[11]~24\,
	combout => \Interpolador1|GG[12]~25_combout\);

-- Location: LCFF_X8_Y11_N17
\Interpolador1|GG[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|GG[12]~25_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|GG\(12));

-- Location: LCFF_X8_Y11_N7
\Interpolador1|GG[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|GG[7]~15_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|GG\(7));

-- Location: LCFF_X8_Y12_N1
\Interpolador1|GG[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida2\(0),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|GG\(2));

-- Location: LCCOMB_X8_Y12_N0
\Interpolador1|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add7~0_combout\ = (\Interpolador1|Add6~4_combout\ & (\Interpolador1|GG\(2) $ (VCC))) # (!\Interpolador1|Add6~4_combout\ & (\Interpolador1|GG\(2) & VCC))
-- \Interpolador1|Add7~1\ = CARRY((\Interpolador1|Add6~4_combout\ & \Interpolador1|GG\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add6~4_combout\,
	datab => \Interpolador1|GG\(2),
	datad => VCC,
	combout => \Interpolador1|Add7~0_combout\,
	cout => \Interpolador1|Add7~1\);

-- Location: LCCOMB_X8_Y12_N8
\Interpolador1|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add7~8_combout\ = ((\Interpolador1|GG\(6) $ (\Interpolador1|Add6~12_combout\ $ (!\Interpolador1|Add7~7\)))) # (GND)
-- \Interpolador1|Add7~9\ = CARRY((\Interpolador1|GG\(6) & ((\Interpolador1|Add6~12_combout\) # (!\Interpolador1|Add7~7\))) # (!\Interpolador1|GG\(6) & (\Interpolador1|Add6~12_combout\ & !\Interpolador1|Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|GG\(6),
	datab => \Interpolador1|Add6~12_combout\,
	datad => VCC,
	cin => \Interpolador1|Add7~7\,
	combout => \Interpolador1|Add7~8_combout\,
	cout => \Interpolador1|Add7~9\);

-- Location: LCCOMB_X8_Y12_N10
\Interpolador1|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add7~10_combout\ = (\Interpolador1|Add6~14_combout\ & ((\Interpolador1|GG\(7) & (\Interpolador1|Add7~9\ & VCC)) # (!\Interpolador1|GG\(7) & (!\Interpolador1|Add7~9\)))) # (!\Interpolador1|Add6~14_combout\ & ((\Interpolador1|GG\(7) & 
-- (!\Interpolador1|Add7~9\)) # (!\Interpolador1|GG\(7) & ((\Interpolador1|Add7~9\) # (GND)))))
-- \Interpolador1|Add7~11\ = CARRY((\Interpolador1|Add6~14_combout\ & (!\Interpolador1|GG\(7) & !\Interpolador1|Add7~9\)) # (!\Interpolador1|Add6~14_combout\ & ((!\Interpolador1|Add7~9\) # (!\Interpolador1|GG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add6~14_combout\,
	datab => \Interpolador1|GG\(7),
	datad => VCC,
	cin => \Interpolador1|Add7~9\,
	combout => \Interpolador1|Add7~10_combout\,
	cout => \Interpolador1|Add7~11\);

-- Location: LCCOMB_X8_Y12_N12
\Interpolador1|Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add7~12_combout\ = ((\Interpolador1|GG\(8) $ (\Interpolador1|Add6~16_combout\ $ (!\Interpolador1|Add7~11\)))) # (GND)
-- \Interpolador1|Add7~13\ = CARRY((\Interpolador1|GG\(8) & ((\Interpolador1|Add6~16_combout\) # (!\Interpolador1|Add7~11\))) # (!\Interpolador1|GG\(8) & (\Interpolador1|Add6~16_combout\ & !\Interpolador1|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|GG\(8),
	datab => \Interpolador1|Add6~16_combout\,
	datad => VCC,
	cin => \Interpolador1|Add7~11\,
	combout => \Interpolador1|Add7~12_combout\,
	cout => \Interpolador1|Add7~13\);

-- Location: LCCOMB_X8_Y12_N14
\Interpolador1|Add7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add7~14_combout\ = (\Interpolador1|GG\(9) & ((\Interpolador1|Add6~18_combout\ & (\Interpolador1|Add7~13\ & VCC)) # (!\Interpolador1|Add6~18_combout\ & (!\Interpolador1|Add7~13\)))) # (!\Interpolador1|GG\(9) & 
-- ((\Interpolador1|Add6~18_combout\ & (!\Interpolador1|Add7~13\)) # (!\Interpolador1|Add6~18_combout\ & ((\Interpolador1|Add7~13\) # (GND)))))
-- \Interpolador1|Add7~15\ = CARRY((\Interpolador1|GG\(9) & (!\Interpolador1|Add6~18_combout\ & !\Interpolador1|Add7~13\)) # (!\Interpolador1|GG\(9) & ((!\Interpolador1|Add7~13\) # (!\Interpolador1|Add6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|GG\(9),
	datab => \Interpolador1|Add6~18_combout\,
	datad => VCC,
	cin => \Interpolador1|Add7~13\,
	combout => \Interpolador1|Add7~14_combout\,
	cout => \Interpolador1|Add7~15\);

-- Location: LCCOMB_X8_Y12_N18
\Interpolador1|Add7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add7~18_combout\ = (\Interpolador1|GG\(11) & ((\Interpolador1|Add6~22_combout\ & (\Interpolador1|Add7~17\ & VCC)) # (!\Interpolador1|Add6~22_combout\ & (!\Interpolador1|Add7~17\)))) # (!\Interpolador1|GG\(11) & 
-- ((\Interpolador1|Add6~22_combout\ & (!\Interpolador1|Add7~17\)) # (!\Interpolador1|Add6~22_combout\ & ((\Interpolador1|Add7~17\) # (GND)))))
-- \Interpolador1|Add7~19\ = CARRY((\Interpolador1|GG\(11) & (!\Interpolador1|Add6~22_combout\ & !\Interpolador1|Add7~17\)) # (!\Interpolador1|GG\(11) & ((!\Interpolador1|Add7~17\) # (!\Interpolador1|Add6~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|GG\(11),
	datab => \Interpolador1|Add6~22_combout\,
	datad => VCC,
	cin => \Interpolador1|Add7~17\,
	combout => \Interpolador1|Add7~18_combout\,
	cout => \Interpolador1|Add7~19\);

-- Location: LCCOMB_X8_Y12_N20
\Interpolador1|Add7~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add7~20_combout\ = ((\Interpolador1|Add6~24_combout\ $ (\Interpolador1|GG\(12) $ (!\Interpolador1|Add7~19\)))) # (GND)
-- \Interpolador1|Add7~21\ = CARRY((\Interpolador1|Add6~24_combout\ & ((\Interpolador1|GG\(12)) # (!\Interpolador1|Add7~19\))) # (!\Interpolador1|Add6~24_combout\ & (\Interpolador1|GG\(12) & !\Interpolador1|Add7~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add6~24_combout\,
	datab => \Interpolador1|GG\(12),
	datad => VCC,
	cin => \Interpolador1|Add7~19\,
	combout => \Interpolador1|Add7~20_combout\,
	cout => \Interpolador1|Add7~21\);

-- Location: LCCOMB_X8_Y12_N24
\Interpolador1|Add7~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add7~24_combout\ = \Interpolador1|Add7~23\ $ (!\Interpolador1|Add6~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|Add6~24_combout\,
	cin => \Interpolador1|Add7~23\,
	combout => \Interpolador1|Add7~24_combout\);

-- Location: LCCOMB_X8_Y11_N24
\Passador1|saida2[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida2[5]~feeder_combout\ = \Passador1|saida1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida1\(5),
	combout => \Passador1|saida2[5]~feeder_combout\);

-- Location: LCFF_X8_Y11_N25
\Passador1|saida2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida2[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida2\(5));

-- Location: LCCOMB_X7_Y11_N28
\Passador1|saida3[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida3[5]~feeder_combout\ = \Passador1|saida2\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida2\(5),
	combout => \Passador1|saida3[5]~feeder_combout\);

-- Location: LCFF_X7_Y11_N29
\Passador1|saida3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida3[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida3\(5));

-- Location: LCCOMB_X7_Y11_N26
\Passador1|saida3[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida3[4]~feeder_combout\ = \Passador1|saida2\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida2\(4),
	combout => \Passador1|saida3[4]~feeder_combout\);

-- Location: LCFF_X7_Y11_N27
\Passador1|saida3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida3[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida3\(4));

-- Location: LCFF_X8_Y12_N27
\Passador1|saida2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida1\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida2\(1));

-- Location: LCFF_X7_Y11_N1
\Passador1|saida3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida2\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida3\(1));

-- Location: LCFF_X8_Y11_N1
\Passador1|saida3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida2\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida3\(0));

-- Location: LCCOMB_X7_Y11_N2
\Interpolador1|HH[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|HH[4]~9_combout\ = (\Passador1|saida3\(2) & (\Passador1|saida3\(0) $ (VCC))) # (!\Passador1|saida3\(2) & (\Passador1|saida3\(0) & VCC))
-- \Interpolador1|HH[4]~10\ = CARRY((\Passador1|saida3\(2) & \Passador1|saida3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida3\(2),
	datab => \Passador1|saida3\(0),
	datad => VCC,
	combout => \Interpolador1|HH[4]~9_combout\,
	cout => \Interpolador1|HH[4]~10\);

-- Location: LCCOMB_X7_Y11_N4
\Interpolador1|HH[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|HH[5]~11_combout\ = (\Passador1|saida3\(3) & ((\Passador1|saida3\(1) & (\Interpolador1|HH[4]~10\ & VCC)) # (!\Passador1|saida3\(1) & (!\Interpolador1|HH[4]~10\)))) # (!\Passador1|saida3\(3) & ((\Passador1|saida3\(1) & 
-- (!\Interpolador1|HH[4]~10\)) # (!\Passador1|saida3\(1) & ((\Interpolador1|HH[4]~10\) # (GND)))))
-- \Interpolador1|HH[5]~12\ = CARRY((\Passador1|saida3\(3) & (!\Passador1|saida3\(1) & !\Interpolador1|HH[4]~10\)) # (!\Passador1|saida3\(3) & ((!\Interpolador1|HH[4]~10\) # (!\Passador1|saida3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida3\(3),
	datab => \Passador1|saida3\(1),
	datad => VCC,
	cin => \Interpolador1|HH[4]~10\,
	combout => \Interpolador1|HH[5]~11_combout\,
	cout => \Interpolador1|HH[5]~12\);

-- Location: LCFF_X7_Y11_N15
\Interpolador1|HH[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|HH[10]~21_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|HH\(10));

-- Location: LCFF_X7_Y11_N5
\Interpolador1|HH[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|HH[5]~11_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|HH\(5));

-- Location: LCFF_X7_Y11_N3
\Interpolador1|HH[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|HH[4]~9_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|HH\(4));

-- Location: LCFF_X7_Y12_N7
\Interpolador1|HH[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida3\(1),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|HH\(3));

-- Location: LCCOMB_X7_Y12_N8
\Interpolador1|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~4_combout\ = ((\Interpolador1|Add7~4_combout\ $ (\Interpolador1|HH\(4) $ (!\Interpolador1|Add8~3\)))) # (GND)
-- \Interpolador1|Add8~5\ = CARRY((\Interpolador1|Add7~4_combout\ & ((\Interpolador1|HH\(4)) # (!\Interpolador1|Add8~3\))) # (!\Interpolador1|Add7~4_combout\ & (\Interpolador1|HH\(4) & !\Interpolador1|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add7~4_combout\,
	datab => \Interpolador1|HH\(4),
	datad => VCC,
	cin => \Interpolador1|Add8~3\,
	combout => \Interpolador1|Add8~4_combout\,
	cout => \Interpolador1|Add8~5\);

-- Location: LCCOMB_X7_Y12_N10
\Interpolador1|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~6_combout\ = (\Interpolador1|Add7~6_combout\ & ((\Interpolador1|HH\(5) & (\Interpolador1|Add8~5\ & VCC)) # (!\Interpolador1|HH\(5) & (!\Interpolador1|Add8~5\)))) # (!\Interpolador1|Add7~6_combout\ & ((\Interpolador1|HH\(5) & 
-- (!\Interpolador1|Add8~5\)) # (!\Interpolador1|HH\(5) & ((\Interpolador1|Add8~5\) # (GND)))))
-- \Interpolador1|Add8~7\ = CARRY((\Interpolador1|Add7~6_combout\ & (!\Interpolador1|HH\(5) & !\Interpolador1|Add8~5\)) # (!\Interpolador1|Add7~6_combout\ & ((!\Interpolador1|Add8~5\) # (!\Interpolador1|HH\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add7~6_combout\,
	datab => \Interpolador1|HH\(5),
	datad => VCC,
	cin => \Interpolador1|Add8~5\,
	combout => \Interpolador1|Add8~6_combout\,
	cout => \Interpolador1|Add8~7\);

-- Location: LCCOMB_X7_Y12_N12
\Interpolador1|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~8_combout\ = ((\Interpolador1|HH\(6) $ (\Interpolador1|Add7~8_combout\ $ (!\Interpolador1|Add8~7\)))) # (GND)
-- \Interpolador1|Add8~9\ = CARRY((\Interpolador1|HH\(6) & ((\Interpolador1|Add7~8_combout\) # (!\Interpolador1|Add8~7\))) # (!\Interpolador1|HH\(6) & (\Interpolador1|Add7~8_combout\ & !\Interpolador1|Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|HH\(6),
	datab => \Interpolador1|Add7~8_combout\,
	datad => VCC,
	cin => \Interpolador1|Add8~7\,
	combout => \Interpolador1|Add8~8_combout\,
	cout => \Interpolador1|Add8~9\);

-- Location: LCCOMB_X7_Y12_N14
\Interpolador1|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~10_combout\ = (\Interpolador1|HH\(7) & ((\Interpolador1|Add7~10_combout\ & (\Interpolador1|Add8~9\ & VCC)) # (!\Interpolador1|Add7~10_combout\ & (!\Interpolador1|Add8~9\)))) # (!\Interpolador1|HH\(7) & ((\Interpolador1|Add7~10_combout\ 
-- & (!\Interpolador1|Add8~9\)) # (!\Interpolador1|Add7~10_combout\ & ((\Interpolador1|Add8~9\) # (GND)))))
-- \Interpolador1|Add8~11\ = CARRY((\Interpolador1|HH\(7) & (!\Interpolador1|Add7~10_combout\ & !\Interpolador1|Add8~9\)) # (!\Interpolador1|HH\(7) & ((!\Interpolador1|Add8~9\) # (!\Interpolador1|Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|HH\(7),
	datab => \Interpolador1|Add7~10_combout\,
	datad => VCC,
	cin => \Interpolador1|Add8~9\,
	combout => \Interpolador1|Add8~10_combout\,
	cout => \Interpolador1|Add8~11\);

-- Location: LCCOMB_X7_Y12_N18
\Interpolador1|Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~14_combout\ = (\Interpolador1|HH\(9) & ((\Interpolador1|Add7~14_combout\ & (\Interpolador1|Add8~13\ & VCC)) # (!\Interpolador1|Add7~14_combout\ & (!\Interpolador1|Add8~13\)))) # (!\Interpolador1|HH\(9) & 
-- ((\Interpolador1|Add7~14_combout\ & (!\Interpolador1|Add8~13\)) # (!\Interpolador1|Add7~14_combout\ & ((\Interpolador1|Add8~13\) # (GND)))))
-- \Interpolador1|Add8~15\ = CARRY((\Interpolador1|HH\(9) & (!\Interpolador1|Add7~14_combout\ & !\Interpolador1|Add8~13\)) # (!\Interpolador1|HH\(9) & ((!\Interpolador1|Add8~13\) # (!\Interpolador1|Add7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|HH\(9),
	datab => \Interpolador1|Add7~14_combout\,
	datad => VCC,
	cin => \Interpolador1|Add8~13\,
	combout => \Interpolador1|Add8~14_combout\,
	cout => \Interpolador1|Add8~15\);

-- Location: LCCOMB_X7_Y12_N20
\Interpolador1|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~16_combout\ = ((\Interpolador1|Add7~16_combout\ $ (\Interpolador1|HH\(10) $ (!\Interpolador1|Add8~15\)))) # (GND)
-- \Interpolador1|Add8~17\ = CARRY((\Interpolador1|Add7~16_combout\ & ((\Interpolador1|HH\(10)) # (!\Interpolador1|Add8~15\))) # (!\Interpolador1|Add7~16_combout\ & (\Interpolador1|HH\(10) & !\Interpolador1|Add8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add7~16_combout\,
	datab => \Interpolador1|HH\(10),
	datad => VCC,
	cin => \Interpolador1|Add8~15\,
	combout => \Interpolador1|Add8~16_combout\,
	cout => \Interpolador1|Add8~17\);

-- Location: LCCOMB_X7_Y12_N22
\Interpolador1|Add8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~18_combout\ = (\Interpolador1|HH\(11) & ((\Interpolador1|Add7~18_combout\ & (\Interpolador1|Add8~17\ & VCC)) # (!\Interpolador1|Add7~18_combout\ & (!\Interpolador1|Add8~17\)))) # (!\Interpolador1|HH\(11) & 
-- ((\Interpolador1|Add7~18_combout\ & (!\Interpolador1|Add8~17\)) # (!\Interpolador1|Add7~18_combout\ & ((\Interpolador1|Add8~17\) # (GND)))))
-- \Interpolador1|Add8~19\ = CARRY((\Interpolador1|HH\(11) & (!\Interpolador1|Add7~18_combout\ & !\Interpolador1|Add8~17\)) # (!\Interpolador1|HH\(11) & ((!\Interpolador1|Add8~17\) # (!\Interpolador1|Add7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|HH\(11),
	datab => \Interpolador1|Add7~18_combout\,
	datad => VCC,
	cin => \Interpolador1|Add8~17\,
	combout => \Interpolador1|Add8~18_combout\,
	cout => \Interpolador1|Add8~19\);

-- Location: LCCOMB_X7_Y12_N24
\Interpolador1|Add8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~20_combout\ = ((\Interpolador1|HH\(12) $ (\Interpolador1|Add7~20_combout\ $ (!\Interpolador1|Add8~19\)))) # (GND)
-- \Interpolador1|Add8~21\ = CARRY((\Interpolador1|HH\(12) & ((\Interpolador1|Add7~20_combout\) # (!\Interpolador1|Add8~19\))) # (!\Interpolador1|HH\(12) & (\Interpolador1|Add7~20_combout\ & !\Interpolador1|Add8~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|HH\(12),
	datab => \Interpolador1|Add7~20_combout\,
	datad => VCC,
	cin => \Interpolador1|Add8~19\,
	combout => \Interpolador1|Add8~20_combout\,
	cout => \Interpolador1|Add8~21\);

-- Location: LCCOMB_X7_Y12_N28
\Interpolador1|Add8~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~24_combout\ = (\Interpolador1|Add7~24_combout\ & (\Interpolador1|Add8~23\ $ (GND))) # (!\Interpolador1|Add7~24_combout\ & (!\Interpolador1|Add8~23\ & VCC))
-- \Interpolador1|Add8~25\ = CARRY((\Interpolador1|Add7~24_combout\ & !\Interpolador1|Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|Add7~24_combout\,
	datad => VCC,
	cin => \Interpolador1|Add8~23\,
	combout => \Interpolador1|Add8~24_combout\,
	cout => \Interpolador1|Add8~25\);

-- Location: LCCOMB_X7_Y12_N30
\Interpolador1|Add8~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add8~26_combout\ = \Interpolador1|Add8~25\ $ (\Interpolador1|Add7~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|Add7~24_combout\,
	cin => \Interpolador1|Add8~25\,
	combout => \Interpolador1|Add8~26_combout\);

-- Location: LCFF_X10_Y12_N21
\Passador1|saida1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida0\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida1\(6));

-- Location: LCCOMB_X9_Y11_N26
\Passador1|saida2[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida2[6]~feeder_combout\ = \Passador1|saida1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida1\(6),
	combout => \Passador1|saida2[6]~feeder_combout\);

-- Location: LCFF_X9_Y11_N27
\Passador1|saida2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida2[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida2\(6));

-- Location: LCFF_X8_Y11_N27
\Passador1|saida3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida2\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida3\(6));

-- Location: LCCOMB_X8_Y11_N28
\Passador1|saida4[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida4[6]~feeder_combout\ = \Passador1|saida3\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida3\(6),
	combout => \Passador1|saida4[6]~feeder_combout\);

-- Location: LCFF_X8_Y11_N29
\Passador1|saida4[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida4[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida4\(6));

-- Location: LCFF_X6_Y12_N5
\Passador1|saida4[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida3\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida4\(5));

-- Location: LCFF_X6_Y12_N19
\Passador1|saida4[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida3\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida4\(4));

-- Location: LCCOMB_X6_Y11_N14
\Passador1|saida3[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida3[3]~feeder_combout\ = \Passador1|saida2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida2\(3),
	combout => \Passador1|saida3[3]~feeder_combout\);

-- Location: LCFF_X6_Y11_N15
\Passador1|saida3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida3[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida3\(3));

-- Location: LCFF_X6_Y11_N1
\Passador1|saida4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida3\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida4\(3));

-- Location: LCFF_X7_Y12_N3
\Passador1|saida4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida3\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida4\(0));

-- Location: LCCOMB_X4_Y12_N0
\Interpolador1|II[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|II[2]~9_combout\ = (\Passador1|saida4\(2) & (\Passador1|saida4\(0) $ (VCC))) # (!\Passador1|saida4\(2) & (\Passador1|saida4\(0) & VCC))
-- \Interpolador1|II[2]~10\ = CARRY((\Passador1|saida4\(2) & \Passador1|saida4\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida4\(2),
	datab => \Passador1|saida4\(0),
	datad => VCC,
	combout => \Interpolador1|II[2]~9_combout\,
	cout => \Interpolador1|II[2]~10\);

-- Location: LCCOMB_X4_Y12_N2
\Interpolador1|II[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|II[3]~11_combout\ = (\Passador1|saida4\(1) & ((\Passador1|saida4\(3) & (\Interpolador1|II[2]~10\ & VCC)) # (!\Passador1|saida4\(3) & (!\Interpolador1|II[2]~10\)))) # (!\Passador1|saida4\(1) & ((\Passador1|saida4\(3) & 
-- (!\Interpolador1|II[2]~10\)) # (!\Passador1|saida4\(3) & ((\Interpolador1|II[2]~10\) # (GND)))))
-- \Interpolador1|II[3]~12\ = CARRY((\Passador1|saida4\(1) & (!\Passador1|saida4\(3) & !\Interpolador1|II[2]~10\)) # (!\Passador1|saida4\(1) & ((!\Interpolador1|II[2]~10\) # (!\Passador1|saida4\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Passador1|saida4\(1),
	datab => \Passador1|saida4\(3),
	datad => VCC,
	cin => \Interpolador1|II[2]~10\,
	combout => \Interpolador1|II[3]~11_combout\,
	cout => \Interpolador1|II[3]~12\);

-- Location: LCFF_X4_Y12_N13
\Interpolador1|II[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|II[8]~21_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|II\(8));

-- Location: LCFF_X4_Y12_N3
\Interpolador1|II[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|II[3]~11_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|II\(3));

-- Location: LCFF_X4_Y12_N1
\Interpolador1|II[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|II[2]~9_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|II\(2));

-- Location: LCFF_X7_Y12_N1
\Passador1|saida4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida3\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida4\(1));

-- Location: LCFF_X6_Y12_N3
\Interpolador1|II[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida4\(1),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|II\(1));

-- Location: LCFF_X6_Y12_N1
\Interpolador1|II[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida4\(0),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|II\(0));

-- Location: LCCOMB_X6_Y12_N0
\Interpolador1|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~0_combout\ = (\Interpolador1|Add6~0_combout\ & ((GND) # (!\Interpolador1|II\(0)))) # (!\Interpolador1|Add6~0_combout\ & (\Interpolador1|II\(0) $ (GND)))
-- \Interpolador1|Add9~1\ = CARRY((\Interpolador1|Add6~0_combout\) # (!\Interpolador1|II\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add6~0_combout\,
	datab => \Interpolador1|II\(0),
	datad => VCC,
	combout => \Interpolador1|Add9~0_combout\,
	cout => \Interpolador1|Add9~1\);

-- Location: LCCOMB_X6_Y12_N8
\Interpolador1|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~8_combout\ = ((\Interpolador1|II\(4) $ (\Interpolador1|Add8~4_combout\ $ (\Interpolador1|Add9~7\)))) # (GND)
-- \Interpolador1|Add9~9\ = CARRY((\Interpolador1|II\(4) & (\Interpolador1|Add8~4_combout\ & !\Interpolador1|Add9~7\)) # (!\Interpolador1|II\(4) & ((\Interpolador1|Add8~4_combout\) # (!\Interpolador1|Add9~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|II\(4),
	datab => \Interpolador1|Add8~4_combout\,
	datad => VCC,
	cin => \Interpolador1|Add9~7\,
	combout => \Interpolador1|Add9~8_combout\,
	cout => \Interpolador1|Add9~9\);

-- Location: LCCOMB_X6_Y12_N10
\Interpolador1|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~10_combout\ = (\Interpolador1|II\(5) & ((\Interpolador1|Add8~6_combout\ & (!\Interpolador1|Add9~9\)) # (!\Interpolador1|Add8~6_combout\ & ((\Interpolador1|Add9~9\) # (GND))))) # (!\Interpolador1|II\(5) & 
-- ((\Interpolador1|Add8~6_combout\ & (\Interpolador1|Add9~9\ & VCC)) # (!\Interpolador1|Add8~6_combout\ & (!\Interpolador1|Add9~9\))))
-- \Interpolador1|Add9~11\ = CARRY((\Interpolador1|II\(5) & ((!\Interpolador1|Add9~9\) # (!\Interpolador1|Add8~6_combout\))) # (!\Interpolador1|II\(5) & (!\Interpolador1|Add8~6_combout\ & !\Interpolador1|Add9~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|II\(5),
	datab => \Interpolador1|Add8~6_combout\,
	datad => VCC,
	cin => \Interpolador1|Add9~9\,
	combout => \Interpolador1|Add9~10_combout\,
	cout => \Interpolador1|Add9~11\);

-- Location: LCCOMB_X6_Y12_N12
\Interpolador1|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~12_combout\ = ((\Interpolador1|II\(6) $ (\Interpolador1|Add8~8_combout\ $ (\Interpolador1|Add9~11\)))) # (GND)
-- \Interpolador1|Add9~13\ = CARRY((\Interpolador1|II\(6) & (\Interpolador1|Add8~8_combout\ & !\Interpolador1|Add9~11\)) # (!\Interpolador1|II\(6) & ((\Interpolador1|Add8~8_combout\) # (!\Interpolador1|Add9~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|II\(6),
	datab => \Interpolador1|Add8~8_combout\,
	datad => VCC,
	cin => \Interpolador1|Add9~11\,
	combout => \Interpolador1|Add9~12_combout\,
	cout => \Interpolador1|Add9~13\);

-- Location: LCCOMB_X6_Y12_N14
\Interpolador1|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~14_combout\ = (\Interpolador1|II\(7) & ((\Interpolador1|Add8~10_combout\ & (!\Interpolador1|Add9~13\)) # (!\Interpolador1|Add8~10_combout\ & ((\Interpolador1|Add9~13\) # (GND))))) # (!\Interpolador1|II\(7) & 
-- ((\Interpolador1|Add8~10_combout\ & (\Interpolador1|Add9~13\ & VCC)) # (!\Interpolador1|Add8~10_combout\ & (!\Interpolador1|Add9~13\))))
-- \Interpolador1|Add9~15\ = CARRY((\Interpolador1|II\(7) & ((!\Interpolador1|Add9~13\) # (!\Interpolador1|Add8~10_combout\))) # (!\Interpolador1|II\(7) & (!\Interpolador1|Add8~10_combout\ & !\Interpolador1|Add9~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|II\(7),
	datab => \Interpolador1|Add8~10_combout\,
	datad => VCC,
	cin => \Interpolador1|Add9~13\,
	combout => \Interpolador1|Add9~14_combout\,
	cout => \Interpolador1|Add9~15\);

-- Location: LCCOMB_X6_Y12_N18
\Interpolador1|Add9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~18_combout\ = (\Interpolador1|II\(9) & ((\Interpolador1|Add8~14_combout\ & (!\Interpolador1|Add9~17\)) # (!\Interpolador1|Add8~14_combout\ & ((\Interpolador1|Add9~17\) # (GND))))) # (!\Interpolador1|II\(9) & 
-- ((\Interpolador1|Add8~14_combout\ & (\Interpolador1|Add9~17\ & VCC)) # (!\Interpolador1|Add8~14_combout\ & (!\Interpolador1|Add9~17\))))
-- \Interpolador1|Add9~19\ = CARRY((\Interpolador1|II\(9) & ((!\Interpolador1|Add9~17\) # (!\Interpolador1|Add8~14_combout\))) # (!\Interpolador1|II\(9) & (!\Interpolador1|Add8~14_combout\ & !\Interpolador1|Add9~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|II\(9),
	datab => \Interpolador1|Add8~14_combout\,
	datad => VCC,
	cin => \Interpolador1|Add9~17\,
	combout => \Interpolador1|Add9~18_combout\,
	cout => \Interpolador1|Add9~19\);

-- Location: LCCOMB_X6_Y12_N20
\Interpolador1|Add9~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~20_combout\ = ((\Interpolador1|II\(10) $ (\Interpolador1|Add8~16_combout\ $ (\Interpolador1|Add9~19\)))) # (GND)
-- \Interpolador1|Add9~21\ = CARRY((\Interpolador1|II\(10) & (\Interpolador1|Add8~16_combout\ & !\Interpolador1|Add9~19\)) # (!\Interpolador1|II\(10) & ((\Interpolador1|Add8~16_combout\) # (!\Interpolador1|Add9~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|II\(10),
	datab => \Interpolador1|Add8~16_combout\,
	datad => VCC,
	cin => \Interpolador1|Add9~19\,
	combout => \Interpolador1|Add9~20_combout\,
	cout => \Interpolador1|Add9~21\);

-- Location: LCCOMB_X6_Y12_N22
\Interpolador1|Add9~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~22_combout\ = (\Interpolador1|Add8~18_combout\ & (\Interpolador1|Add9~21\ & VCC)) # (!\Interpolador1|Add8~18_combout\ & (!\Interpolador1|Add9~21\))
-- \Interpolador1|Add9~23\ = CARRY((!\Interpolador1|Add8~18_combout\ & !\Interpolador1|Add9~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|Add8~18_combout\,
	datad => VCC,
	cin => \Interpolador1|Add9~21\,
	combout => \Interpolador1|Add9~22_combout\,
	cout => \Interpolador1|Add9~23\);

-- Location: LCCOMB_X6_Y12_N24
\Interpolador1|Add9~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~24_combout\ = (\Interpolador1|Add8~20_combout\ & ((GND) # (!\Interpolador1|Add9~23\))) # (!\Interpolador1|Add8~20_combout\ & (\Interpolador1|Add9~23\ $ (GND)))
-- \Interpolador1|Add9~25\ = CARRY((\Interpolador1|Add8~20_combout\) # (!\Interpolador1|Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|Add8~20_combout\,
	datad => VCC,
	cin => \Interpolador1|Add9~23\,
	combout => \Interpolador1|Add9~24_combout\,
	cout => \Interpolador1|Add9~25\);

-- Location: LCCOMB_X6_Y12_N28
\Interpolador1|Add9~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~28_combout\ = (\Interpolador1|Add8~24_combout\ & ((GND) # (!\Interpolador1|Add9~27\))) # (!\Interpolador1|Add8~24_combout\ & (\Interpolador1|Add9~27\ $ (GND)))
-- \Interpolador1|Add9~29\ = CARRY((\Interpolador1|Add8~24_combout\) # (!\Interpolador1|Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|Add8~24_combout\,
	datad => VCC,
	cin => \Interpolador1|Add9~27\,
	combout => \Interpolador1|Add9~28_combout\,
	cout => \Interpolador1|Add9~29\);

-- Location: LCCOMB_X6_Y12_N30
\Interpolador1|Add9~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|Add9~30_combout\ = \Interpolador1|Add9~29\ $ (!\Interpolador1|Add8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|Add8~26_combout\,
	cin => \Interpolador1|Add9~29\,
	combout => \Interpolador1|Add9~30_combout\);

-- Location: LCCOMB_X4_Y12_N30
\Passador1|saida5[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Passador1|saida5[3]~feeder_combout\ = \Passador1|saida4\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Passador1|saida4\(3),
	combout => \Passador1|saida5[3]~feeder_combout\);

-- Location: LCFF_X4_Y12_N31
\Passador1|saida5[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Passador1|saida5[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida5\(3));

-- Location: LCFF_X5_Y12_N7
\Interpolador1|JJ[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida5\(3),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|JJ\(3));

-- Location: LCFF_X7_Y11_N21
\Passador1|saida3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida2\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida3\(2));

-- Location: LCFF_X6_Y12_N13
\Passador1|saida4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida3\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida4\(2));

-- Location: LCFF_X6_Y12_N17
\Passador1|saida5[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida4\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida5\(2));

-- Location: LCFF_X5_Y12_N5
\Interpolador1|JJ[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida5\(2),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|JJ\(2));

-- Location: LCFF_X6_Y12_N27
\Passador1|saida5[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida4\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Passador1|saida5\(1));

-- Location: LCFF_X5_Y12_N3
\Interpolador1|JJ[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Passador1|saida5\(1),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|JJ\(1));

-- Location: LCCOMB_X5_Y12_N0
\Interpolador1|aux1[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[5]~12_cout\ = CARRY((\Interpolador1|JJ\(0) & \Interpolador1|Add9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|JJ\(0),
	datab => \Interpolador1|Add9~0_combout\,
	datad => VCC,
	cout => \Interpolador1|aux1[5]~12_cout\);

-- Location: LCCOMB_X5_Y12_N2
\Interpolador1|aux1[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[5]~14_cout\ = CARRY((\Interpolador1|Add9~2_combout\ & (!\Interpolador1|JJ\(1) & !\Interpolador1|aux1[5]~12_cout\)) # (!\Interpolador1|Add9~2_combout\ & ((!\Interpolador1|aux1[5]~12_cout\) # (!\Interpolador1|JJ\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add9~2_combout\,
	datab => \Interpolador1|JJ\(1),
	datad => VCC,
	cin => \Interpolador1|aux1[5]~12_cout\,
	cout => \Interpolador1|aux1[5]~14_cout\);

-- Location: LCCOMB_X5_Y12_N4
\Interpolador1|aux1[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[5]~16_cout\ = CARRY((\Interpolador1|Add9~4_combout\ & ((\Interpolador1|JJ\(2)) # (!\Interpolador1|aux1[5]~14_cout\))) # (!\Interpolador1|Add9~4_combout\ & (\Interpolador1|JJ\(2) & !\Interpolador1|aux1[5]~14_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add9~4_combout\,
	datab => \Interpolador1|JJ\(2),
	datad => VCC,
	cin => \Interpolador1|aux1[5]~14_cout\,
	cout => \Interpolador1|aux1[5]~16_cout\);

-- Location: LCCOMB_X5_Y12_N6
\Interpolador1|aux1[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[5]~18_cout\ = CARRY((\Interpolador1|Add9~6_combout\ & (!\Interpolador1|JJ\(3) & !\Interpolador1|aux1[5]~16_cout\)) # (!\Interpolador1|Add9~6_combout\ & ((!\Interpolador1|aux1[5]~16_cout\) # (!\Interpolador1|JJ\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add9~6_combout\,
	datab => \Interpolador1|JJ\(3),
	datad => VCC,
	cin => \Interpolador1|aux1[5]~16_cout\,
	cout => \Interpolador1|aux1[5]~18_cout\);

-- Location: LCCOMB_X5_Y12_N8
\Interpolador1|aux1[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[5]~20_cout\ = CARRY((\Interpolador1|JJ\(4) & ((\Interpolador1|Add9~8_combout\) # (!\Interpolador1|aux1[5]~18_cout\))) # (!\Interpolador1|JJ\(4) & (\Interpolador1|Add9~8_combout\ & !\Interpolador1|aux1[5]~18_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|JJ\(4),
	datab => \Interpolador1|Add9~8_combout\,
	datad => VCC,
	cin => \Interpolador1|aux1[5]~18_cout\,
	cout => \Interpolador1|aux1[5]~20_cout\);

-- Location: LCCOMB_X5_Y12_N10
\Interpolador1|aux1[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[5]~21_combout\ = (\Interpolador1|JJ\(5) & ((\Interpolador1|Add9~10_combout\ & (\Interpolador1|aux1[5]~20_cout\ & VCC)) # (!\Interpolador1|Add9~10_combout\ & (!\Interpolador1|aux1[5]~20_cout\)))) # (!\Interpolador1|JJ\(5) & 
-- ((\Interpolador1|Add9~10_combout\ & (!\Interpolador1|aux1[5]~20_cout\)) # (!\Interpolador1|Add9~10_combout\ & ((\Interpolador1|aux1[5]~20_cout\) # (GND)))))
-- \Interpolador1|aux1[5]~22\ = CARRY((\Interpolador1|JJ\(5) & (!\Interpolador1|Add9~10_combout\ & !\Interpolador1|aux1[5]~20_cout\)) # (!\Interpolador1|JJ\(5) & ((!\Interpolador1|aux1[5]~20_cout\) # (!\Interpolador1|Add9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|JJ\(5),
	datab => \Interpolador1|Add9~10_combout\,
	datad => VCC,
	cin => \Interpolador1|aux1[5]~20_cout\,
	combout => \Interpolador1|aux1[5]~21_combout\,
	cout => \Interpolador1|aux1[5]~22\);

-- Location: LCCOMB_X5_Y12_N12
\Interpolador1|aux1[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[6]~23_combout\ = ((\Interpolador1|JJ\(6) $ (\Interpolador1|Add9~12_combout\ $ (!\Interpolador1|aux1[5]~22\)))) # (GND)
-- \Interpolador1|aux1[6]~24\ = CARRY((\Interpolador1|JJ\(6) & ((\Interpolador1|Add9~12_combout\) # (!\Interpolador1|aux1[5]~22\))) # (!\Interpolador1|JJ\(6) & (\Interpolador1|Add9~12_combout\ & !\Interpolador1|aux1[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|JJ\(6),
	datab => \Interpolador1|Add9~12_combout\,
	datad => VCC,
	cin => \Interpolador1|aux1[5]~22\,
	combout => \Interpolador1|aux1[6]~23_combout\,
	cout => \Interpolador1|aux1[6]~24\);

-- Location: LCCOMB_X5_Y12_N14
\Interpolador1|aux1[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[7]~25_combout\ = (\Interpolador1|JJ\(7) & ((\Interpolador1|Add9~14_combout\ & (\Interpolador1|aux1[6]~24\ & VCC)) # (!\Interpolador1|Add9~14_combout\ & (!\Interpolador1|aux1[6]~24\)))) # (!\Interpolador1|JJ\(7) & 
-- ((\Interpolador1|Add9~14_combout\ & (!\Interpolador1|aux1[6]~24\)) # (!\Interpolador1|Add9~14_combout\ & ((\Interpolador1|aux1[6]~24\) # (GND)))))
-- \Interpolador1|aux1[7]~26\ = CARRY((\Interpolador1|JJ\(7) & (!\Interpolador1|Add9~14_combout\ & !\Interpolador1|aux1[6]~24\)) # (!\Interpolador1|JJ\(7) & ((!\Interpolador1|aux1[6]~24\) # (!\Interpolador1|Add9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|JJ\(7),
	datab => \Interpolador1|Add9~14_combout\,
	datad => VCC,
	cin => \Interpolador1|aux1[6]~24\,
	combout => \Interpolador1|aux1[7]~25_combout\,
	cout => \Interpolador1|aux1[7]~26\);

-- Location: LCCOMB_X5_Y12_N16
\Interpolador1|aux1[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[8]~27_combout\ = (\Interpolador1|Add9~16_combout\ & (\Interpolador1|aux1[7]~26\ $ (GND))) # (!\Interpolador1|Add9~16_combout\ & (!\Interpolador1|aux1[7]~26\ & VCC))
-- \Interpolador1|aux1[8]~28\ = CARRY((\Interpolador1|Add9~16_combout\ & !\Interpolador1|aux1[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add9~16_combout\,
	datad => VCC,
	cin => \Interpolador1|aux1[7]~26\,
	combout => \Interpolador1|aux1[8]~27_combout\,
	cout => \Interpolador1|aux1[8]~28\);

-- Location: LCCOMB_X5_Y12_N18
\Interpolador1|aux1[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[9]~29_combout\ = (\Interpolador1|Add9~18_combout\ & (!\Interpolador1|aux1[8]~28\)) # (!\Interpolador1|Add9~18_combout\ & ((\Interpolador1|aux1[8]~28\) # (GND)))
-- \Interpolador1|aux1[9]~30\ = CARRY((!\Interpolador1|aux1[8]~28\) # (!\Interpolador1|Add9~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|Add9~18_combout\,
	datad => VCC,
	cin => \Interpolador1|aux1[8]~28\,
	combout => \Interpolador1|aux1[9]~29_combout\,
	cout => \Interpolador1|aux1[9]~30\);

-- Location: LCCOMB_X5_Y12_N22
\Interpolador1|aux1[11]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[11]~33_combout\ = (\Interpolador1|Add9~22_combout\ & (!\Interpolador1|aux1[10]~32\)) # (!\Interpolador1|Add9~22_combout\ & ((\Interpolador1|aux1[10]~32\) # (GND)))
-- \Interpolador1|aux1[11]~34\ = CARRY((!\Interpolador1|aux1[10]~32\) # (!\Interpolador1|Add9~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|Add9~22_combout\,
	datad => VCC,
	cin => \Interpolador1|aux1[10]~32\,
	combout => \Interpolador1|aux1[11]~33_combout\,
	cout => \Interpolador1|aux1[11]~34\);

-- Location: LCCOMB_X5_Y12_N24
\Interpolador1|aux1[12]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[12]~35_combout\ = (\Interpolador1|Add9~24_combout\ & (\Interpolador1|aux1[11]~34\ $ (GND))) # (!\Interpolador1|Add9~24_combout\ & (!\Interpolador1|aux1[11]~34\ & VCC))
-- \Interpolador1|aux1[12]~36\ = CARRY((\Interpolador1|Add9~24_combout\ & !\Interpolador1|aux1[11]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|Add9~24_combout\,
	datad => VCC,
	cin => \Interpolador1|aux1[11]~34\,
	combout => \Interpolador1|aux1[12]~35_combout\,
	cout => \Interpolador1|aux1[12]~36\);

-- Location: LCCOMB_X5_Y12_N26
\Interpolador1|aux1[13]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[13]~37_combout\ = (\Interpolador1|Add9~26_combout\ & (!\Interpolador1|aux1[12]~36\)) # (!\Interpolador1|Add9~26_combout\ & ((\Interpolador1|aux1[12]~36\) # (GND)))
-- \Interpolador1|aux1[13]~38\ = CARRY((!\Interpolador1|aux1[12]~36\) # (!\Interpolador1|Add9~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|Add9~26_combout\,
	datad => VCC,
	cin => \Interpolador1|aux1[12]~36\,
	combout => \Interpolador1|aux1[13]~37_combout\,
	cout => \Interpolador1|aux1[13]~38\);

-- Location: LCCOMB_X5_Y12_N28
\Interpolador1|aux1[14]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[14]~39_combout\ = (\Interpolador1|Add9~28_combout\ & (\Interpolador1|aux1[13]~38\ $ (GND))) # (!\Interpolador1|Add9~28_combout\ & (!\Interpolador1|aux1[13]~38\ & VCC))
-- \Interpolador1|aux1[14]~40\ = CARRY((\Interpolador1|Add9~28_combout\ & !\Interpolador1|aux1[13]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|Add9~28_combout\,
	datad => VCC,
	cin => \Interpolador1|aux1[13]~38\,
	combout => \Interpolador1|aux1[14]~39_combout\,
	cout => \Interpolador1|aux1[14]~40\);

-- Location: LCCOMB_X5_Y12_N30
\Interpolador1|aux1[15]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux1[15]~41_combout\ = \Interpolador1|aux1[14]~40\ $ (\Interpolador1|Add9~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|Add9~30_combout\,
	cin => \Interpolador1|aux1[14]~40\,
	combout => \Interpolador1|aux1[15]~41_combout\);

-- Location: LCFF_X5_Y12_N31
\Interpolador1|aux1[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux1[15]~41_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux1\(15));

-- Location: LCFF_X5_Y11_N27
\Interpolador1|aux2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|aux1\(15),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux2\(10));

-- Location: LCFF_X5_Y12_N27
\Interpolador1|aux1[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux1[13]~37_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux1\(13));

-- Location: LCFF_X5_Y11_N31
\Interpolador1|aux2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|aux1\(13),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux2\(8));

-- Location: LCFF_X5_Y12_N29
\Interpolador1|aux1[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux1[14]~39_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux1\(14));

-- Location: LCFF_X5_Y11_N23
\Interpolador1|aux2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|aux1\(14),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux2\(9));

-- Location: LCCOMB_X5_Y11_N22
\Interpolador1|aux3[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux3[7]~0_combout\ = (!\Interpolador1|aux2\(8) & (!\Interpolador1|aux2\(9) & !\Interpolador1|aux2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|aux2\(8),
	datac => \Interpolador1|aux2\(9),
	datad => \Interpolador1|aux2\(10),
	combout => \Interpolador1|aux3[7]~0_combout\);

-- Location: LCFF_X5_Y12_N15
\Interpolador1|aux1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux1[7]~25_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux1\(7));

-- Location: LCCOMB_X6_Y11_N28
\Interpolador1|aux2[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux2[2]~feeder_combout\ = \Interpolador1|aux1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|aux1\(7),
	combout => \Interpolador1|aux2[2]~feeder_combout\);

-- Location: LCFF_X6_Y11_N29
\Interpolador1|aux2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux2[2]~feeder_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux2\(2));

-- Location: LCFF_X5_Y12_N17
\Interpolador1|aux1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux1[8]~27_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux1\(8));

-- Location: LCFF_X6_Y11_N3
\Interpolador1|aux2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|aux1\(8),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux2\(3));

-- Location: LCFF_X5_Y12_N13
\Interpolador1|aux1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux1[6]~23_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux1\(6));

-- Location: LCCOMB_X6_Y11_N30
\Interpolador1|aux2[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux2[1]~feeder_combout\ = \Interpolador1|aux1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|aux1\(6),
	combout => \Interpolador1|aux2[1]~feeder_combout\);

-- Location: LCFF_X6_Y11_N31
\Interpolador1|aux2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux2[1]~feeder_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux2\(1));

-- Location: LCCOMB_X6_Y11_N2
\Interpolador1|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|LessThan1~0_combout\ = (((!\Interpolador1|aux2\(1)) # (!\Interpolador1|aux2\(3))) # (!\Interpolador1|aux2\(2))) # (!\Interpolador1|aux2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|aux2\(0),
	datab => \Interpolador1|aux2\(2),
	datac => \Interpolador1|aux2\(3),
	datad => \Interpolador1|aux2\(1),
	combout => \Interpolador1|LessThan1~0_combout\);

-- Location: LCCOMB_X5_Y11_N30
\Interpolador1|aux3[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux3[7]~1_combout\ = (\Interpolador1|aux3[7]~0_combout\ & ((\Interpolador1|LessThan1~1_combout\) # (\Interpolador1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|LessThan1~1_combout\,
	datab => \Interpolador1|aux3[7]~0_combout\,
	datad => \Interpolador1|LessThan1~0_combout\,
	combout => \Interpolador1|aux3[7]~1_combout\);

-- Location: LCFF_X5_Y12_N11
\Interpolador1|aux1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux1[5]~21_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux1\(5));

-- Location: LCCOMB_X6_Y11_N6
\Interpolador1|aux2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux2[0]~feeder_combout\ = \Interpolador1|aux1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|aux1\(5),
	combout => \Interpolador1|aux2[0]~feeder_combout\);

-- Location: LCFF_X6_Y11_N7
\Interpolador1|aux2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux2[0]~feeder_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux2\(0));

-- Location: LCCOMB_X6_Y11_N16
\Interpolador1|aux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux3~2_combout\ = (\Interpolador1|aux3[7]~1_combout\ & ((\Interpolador1|aux2\(0)))) # (!\Interpolador1|aux3[7]~1_combout\ & (!\Interpolador1|aux2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|aux2\(10),
	datac => \Interpolador1|aux3[7]~1_combout\,
	datad => \Interpolador1|aux2\(0),
	combout => \Interpolador1|aux3~2_combout\);

-- Location: LCFF_X6_Y11_N17
\Interpolador1|aux3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux3~2_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux3\(0));

-- Location: LCFF_X6_Y11_N13
\Interpolador1|amostraOUT2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|aux3\(0),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|amostraOUT2\(0));

-- Location: LCCOMB_X6_Y11_N12
\sampleOut2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut2~0_combout\ = (\estado_atual~regout\ & \Interpolador1|amostraOUT2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual~regout\,
	datac => \Interpolador1|amostraOUT2\(0),
	combout => \sampleOut2~0_combout\);

-- Location: LCCOMB_X5_Y11_N4
\Interpolador1|aux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux3~3_combout\ = (\Interpolador1|aux3[7]~1_combout\ & (\Interpolador1|aux2\(1))) # (!\Interpolador1|aux3[7]~1_combout\ & ((!\Interpolador1|aux2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|aux3[7]~1_combout\,
	datac => \Interpolador1|aux2\(1),
	datad => \Interpolador1|aux2\(10),
	combout => \Interpolador1|aux3~3_combout\);

-- Location: LCFF_X5_Y11_N5
\Interpolador1|aux3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux3~3_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux3\(1));

-- Location: LCFF_X5_Y11_N21
\Interpolador1|amostraOUT2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|aux3\(1),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|amostraOUT2\(1));

-- Location: LCCOMB_X5_Y11_N20
\sampleOut2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut2~1_combout\ = (\Interpolador1|amostraOUT2\(1) & \estado_atual~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Interpolador1|amostraOUT2\(1),
	datad => \estado_atual~regout\,
	combout => \sampleOut2~1_combout\);

-- Location: LCCOMB_X6_Y11_N8
\Interpolador1|aux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux3~4_combout\ = (\Interpolador1|aux3[7]~1_combout\ & ((\Interpolador1|aux2\(2)))) # (!\Interpolador1|aux3[7]~1_combout\ & (!\Interpolador1|aux2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|aux2\(10),
	datac => \Interpolador1|aux3[7]~1_combout\,
	datad => \Interpolador1|aux2\(2),
	combout => \Interpolador1|aux3~4_combout\);

-- Location: LCFF_X6_Y11_N9
\Interpolador1|aux3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux3~4_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux3\(2));

-- Location: LCFF_X6_Y11_N11
\Interpolador1|amostraOUT2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|aux3\(2),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|amostraOUT2\(2));

-- Location: LCCOMB_X6_Y11_N10
\sampleOut2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut2~2_combout\ = (\estado_atual~regout\ & \Interpolador1|amostraOUT2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual~regout\,
	datac => \Interpolador1|amostraOUT2\(2),
	combout => \sampleOut2~2_combout\);

-- Location: LCCOMB_X6_Y11_N20
\Interpolador1|aux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux3~5_combout\ = (\Interpolador1|aux3[7]~1_combout\ & ((\Interpolador1|aux2\(3)))) # (!\Interpolador1|aux3[7]~1_combout\ & (!\Interpolador1|aux2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|aux2\(10),
	datac => \Interpolador1|aux3[7]~1_combout\,
	datad => \Interpolador1|aux2\(3),
	combout => \Interpolador1|aux3~5_combout\);

-- Location: LCFF_X6_Y11_N21
\Interpolador1|aux3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux3~5_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux3\(3));

-- Location: LCFF_X6_Y11_N23
\Interpolador1|amostraOUT2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|aux3\(3),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|amostraOUT2\(3));

-- Location: LCCOMB_X6_Y11_N22
\sampleOut2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut2~3_combout\ = (\estado_atual~regout\ & \Interpolador1|amostraOUT2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual~regout\,
	datac => \Interpolador1|amostraOUT2\(3),
	combout => \sampleOut2~3_combout\);

-- Location: LCFF_X5_Y12_N19
\Interpolador1|aux1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux1[9]~29_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux1\(9));

-- Location: LCCOMB_X5_Y11_N28
\Interpolador1|aux2[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux2[4]~feeder_combout\ = \Interpolador1|aux1\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|aux1\(9),
	combout => \Interpolador1|aux2[4]~feeder_combout\);

-- Location: LCFF_X5_Y11_N29
\Interpolador1|aux2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux2[4]~feeder_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux2\(4));

-- Location: LCCOMB_X5_Y11_N8
\Interpolador1|aux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux3~6_combout\ = (\Interpolador1|aux3[7]~1_combout\ & ((\Interpolador1|aux2\(4)))) # (!\Interpolador1|aux3[7]~1_combout\ & (!\Interpolador1|aux2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|aux3[7]~1_combout\,
	datab => \Interpolador1|aux2\(10),
	datac => \Interpolador1|aux2\(4),
	combout => \Interpolador1|aux3~6_combout\);

-- Location: LCFF_X5_Y11_N9
\Interpolador1|aux3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux3~6_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux3\(4));

-- Location: LCFF_X5_Y11_N1
\Interpolador1|amostraOUT2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|aux3\(4),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|amostraOUT2\(4));

-- Location: LCCOMB_X5_Y11_N0
\sampleOut2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut2~4_combout\ = (\Interpolador1|amostraOUT2\(4) & \estado_atual~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Interpolador1|amostraOUT2\(4),
	datad => \estado_atual~regout\,
	combout => \sampleOut2~4_combout\);

-- Location: LCCOMB_X5_Y11_N24
\Interpolador1|aux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux3~7_combout\ = (\Interpolador1|aux3[7]~1_combout\ & (\Interpolador1|aux2\(5))) # (!\Interpolador1|aux3[7]~1_combout\ & ((!\Interpolador1|aux2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|aux2\(5),
	datab => \Interpolador1|aux2\(10),
	datac => \Interpolador1|aux3[7]~1_combout\,
	combout => \Interpolador1|aux3~7_combout\);

-- Location: LCFF_X5_Y11_N25
\Interpolador1|aux3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux3~7_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux3\(5));

-- Location: LCFF_X5_Y11_N13
\Interpolador1|amostraOUT2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|aux3\(5),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|amostraOUT2\(5));

-- Location: LCCOMB_X5_Y11_N12
\sampleOut2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut2~5_combout\ = (\Interpolador1|amostraOUT2\(5) & \estado_atual~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Interpolador1|amostraOUT2\(5),
	datad => \estado_atual~regout\,
	combout => \sampleOut2~5_combout\);

-- Location: LCFF_X5_Y12_N23
\Interpolador1|aux1[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux1[11]~33_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux1\(11));

-- Location: LCCOMB_X5_Y11_N2
\Interpolador1|aux2[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux2[6]~feeder_combout\ = \Interpolador1|aux1\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|aux1\(11),
	combout => \Interpolador1|aux2[6]~feeder_combout\);

-- Location: LCFF_X5_Y11_N3
\Interpolador1|aux2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux2[6]~feeder_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux2\(6));

-- Location: LCCOMB_X5_Y11_N16
\Interpolador1|aux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux3~8_combout\ = (\Interpolador1|aux3[7]~1_combout\ & ((\Interpolador1|aux2\(6)))) # (!\Interpolador1|aux3[7]~1_combout\ & (!\Interpolador1|aux2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|aux3[7]~1_combout\,
	datab => \Interpolador1|aux2\(10),
	datac => \Interpolador1|aux2\(6),
	combout => \Interpolador1|aux3~8_combout\);

-- Location: LCFF_X5_Y11_N17
\Interpolador1|aux3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux3~8_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux3\(6));

-- Location: LCFF_X5_Y11_N19
\Interpolador1|amostraOUT2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|aux3\(6),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|amostraOUT2\(6));

-- Location: LCCOMB_X5_Y11_N18
\sampleOut2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut2~6_combout\ = (\Interpolador1|amostraOUT2\(6) & \estado_atual~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Interpolador1|amostraOUT2\(6),
	datad => \estado_atual~regout\,
	combout => \sampleOut2~6_combout\);

-- Location: LCFF_X5_Y12_N25
\Interpolador1|aux1[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux1[12]~35_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux1\(12));

-- Location: LCFF_X5_Y11_N11
\Interpolador1|aux2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Interpolador1|aux1\(12),
	sload => VCC,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux2\(7));

-- Location: LCCOMB_X5_Y11_N14
\Interpolador1|aux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|aux3~9_combout\ = (\Interpolador1|aux3[7]~1_combout\ & ((\Interpolador1|aux2\(7)))) # (!\Interpolador1|aux3[7]~1_combout\ & (!\Interpolador1|aux2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Interpolador1|aux3[7]~1_combout\,
	datab => \Interpolador1|aux2\(10),
	datac => \Interpolador1|aux2\(7),
	combout => \Interpolador1|aux3~9_combout\);

-- Location: LCFF_X5_Y11_N15
\Interpolador1|aux3[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|aux3~9_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|aux3\(7));

-- Location: LCCOMB_X6_Y11_N24
\Interpolador1|amostraOUT2[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Interpolador1|amostraOUT2[7]~feeder_combout\ = \Interpolador1|aux3\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interpolador1|aux3\(7),
	combout => \Interpolador1|amostraOUT2[7]~feeder_combout\);

-- Location: LCFF_X6_Y11_N25
\Interpolador1|amostraOUT2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Interpolador1|amostraOUT2[7]~feeder_combout\,
	ena => \Interpolador1|EE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Interpolador1|amostraOUT2\(7));

-- Location: LCCOMB_X5_Y11_N6
\sampleOut2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \sampleOut2~7_combout\ = (\Interpolador1|amostraOUT2\(7) & \estado_atual~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Interpolador1|amostraOUT2\(7),
	datad => \estado_atual~regout\,
	combout => \sampleOut2~7_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\newLine~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \newLine~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_newLine);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valido~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \valido~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valido);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut1(0));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut1(1));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut1(2));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut1(3));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut1(4));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut1(5));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut1(6));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut1(7));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut2(0));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut2(1));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut2(2));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut2(3));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut2(4));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut2(5));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut2(6));

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sampleOut2[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sampleOut2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sampleOut2(7));
END structure;


