LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;    
use ieee.std_logic_arith.all;
use ieee.math_real.all;
use std.textio.all;
use ieee.std_logic_textio.all;


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
		clk => clk, newLine => newLine, reset => reset, sampleIn => sampleIn,
		sampleOut1 => sampleOut1, sampleOut2 => sampleOut2, start => start, valido => valido
	);

	init : PROCESS        
	-- variable declarations       
	BEGIN
	-- code that executes only once	
		--reset <= '1', '0' after 10 ns;
		WAIT;
	END PROCESS init;

	always : PROCESS 
		file fileInput: text open read_mode is "entrada.txt";
		variable inputLine: line;              
		variable sample: std_logic_vector(7 downto 0);

	BEGIN
	   
		while(not endfile(fileInput)) loop
			readline(fileInput,inputLine);
			read(inputLine,sample);
			sampleIn <= sample;
			wait until rising_edge(clk);
		end loop;

	END PROCESS always;

END Upsampling_arch;
