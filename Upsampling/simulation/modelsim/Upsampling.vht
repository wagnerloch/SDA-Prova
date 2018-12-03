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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/03/2018 17:00:53"
                                                            
-- Vhdl Test Bench template for design  :  Upsampling
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Upsampling_vhd_tst IS
END Upsampling_vhd_tst;
ARCHITECTURE Upsampling_arch OF Upsampling_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL newLine : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL sampleIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sampleOut1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sampleOut2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL start : STD_LOGIC;
SIGNAL valido : STD_LOGIC;
COMPONENT Upsampling
	PORT (
	clk : IN STD_LOGIC;
	newLine : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	sampleIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	sampleOut1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	sampleOut2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	start : IN STD_LOGIC;
	valido : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Upsampling
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	newLine => newLine,
	reset => reset,
	sampleIn => sampleIn,
	sampleOut1 => sampleOut1,
	sampleOut2 => sampleOut2,
	start => start,
	valido => valido
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Upsampling_arch;
