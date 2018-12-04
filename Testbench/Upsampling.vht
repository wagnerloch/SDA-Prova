LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
USE STD.textio.all; 
use ieee.std_logic_textio.all;                              

ENTITY Upsampling_vhd_tst IS
END Upsampling_vhd_tst;
ARCHITECTURE Upsampling_arch OF Upsampling_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC := '0';
SIGNAL newLine : STD_LOGIC;
SIGNAL reset : STD_LOGIC := '1';
SIGNAL sampleIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sampleOut1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sampleOut2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL start : STD_LOGIC := '0';
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

function str_to_stdvec(inp: string) return std_logic_vector is
  variable temp: std_logic_vector(inp'range);
    begin
        for i in inp'range loop
            if (inp(i) = '1') then
                temp(i) := '1';
            elsif (inp(i) = '0') then
                temp(i) := '0';
            end if;
        end loop;
	  return temp;
 end function str_to_stdvec;
 
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

clock_process : process
begin
	clk <= not clk after 100 ps;
	reset <= '0' after 150 ps;
	start <= '1' after 200 ps;
	wait for 1 ps;
end process;

leitura_arq : PROCESS
file fileType : text;
variable lineType : line;
variable inType : std_logic_vector (7 downto 0);
variable strType : string (8 downto 1);
begin
	file_open(fileType, "entrada.txt", READ_MODE);
	while not endfile (fileType) loop
			readline(fileType, lineType);
			--read (lineType, strType);
			--inType := str_to_stdvec(strType);
			read (lineType, inType);
			sampleIn <= inType;
			wait for 1 ps;
	end loop;
	file_close(fileType);
	WAIT; 
end process;                                       
END Upsampling_arch;