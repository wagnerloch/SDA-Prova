LIBRARY IEEE;
Use ieee.std_logic_1164.all;

Entity Passador is
port (
	clock	: in std_logic;
	entrada : in std_logic_vector (7 downto 0);
	saida0, saida1, saida2, saida3, saida4, saida5 : out std_logic_vector (7 downto 0)
);
end Passador;

Architecture Comportamento of Passador is
signal in0, in1, in2, in3, in4 : std_logic_vector (7 downto 0);
begin
	process (clock, entrada)
	begin
		if (clock = '1' and clock'event) then
			saida5 <= in4;
			in4 <= in3;
			saida4 <= in3;
			in3 <= in2;
			saida3 <= in2;
			in2 <= in1;
			saida2 <= in1;
			in1 <= in0;
			saida1 <= in0;
			in0 <= entrada;
			saida0 <= entrada;
		end if;
	end process;	
end Comportamento;