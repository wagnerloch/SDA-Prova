library IEEE;
use IEEE.std_logic_1164.all;

ENTITY Upsampling IS
	PORT( 
		sampleIn						: in STD_LOGIC_VECTOR (7 DOWNTO 0);
		clk, start, reset				: in STD_LOGIC;
		newLine, valido					: out STD_LOGIC;
		sampleOut1, sampleOut2			: out STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END Upsampling;

architecture behavioral of Upsampling is

	COMPONENT Memory IS
		PORT(
			address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			clock			: IN STD_LOGIC  := '1';
			data			: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			wren			: IN STD_LOGIC ;
			q				: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT Interpolador IS
		PORT(
			clock, inicio  					:	in STD_LOGIC;
			amostraIN0							:	in STD_LOGIC_VECTOR (7 DOWNTO 0);
			amostraIN1							:	in STD_LOGIC_VECTOR (7 DOWNTO 0);
			amostraIN2							:	in STD_LOGIC_VECTOR (7 DOWNTO 0);
			amostraIN3							:	in STD_LOGIC_VECTOR (7 DOWNTO 0);
			amostraIN4							:	in STD_LOGIC_VECTOR (7 DOWNTO 0);
			amostraIN5							:	in STD_LOGIC_VECTOR (7 DOWNTO 0);
			amostraOUT, amostraOUT2			:	out STD_LOGIC_VECTOR (7 DOWNTO 0);
			endereco								:	out STD_LOGIC_VECTOR (9 DOWNTO 0);
			trocaLinha, inicioImagem, valido	:	out STD_LOGIC 
		);
	END COMPONENT;

	COMPONENT Passador IS
		PORT(
			clock	: in std_logic;
			entrada : in std_logic_vector (7 downto 0);
			saida0, saida1, saida2, saida3, saida4, saida5 : out std_logic_vector (7 downto 0)
		);
	END COMPONENT;
	
	signal auxAddress 												: STD_LOGIC_VECTOR (9 DOWNTO 0);
	signal auxWriteEnable, auxInicio, auxTrocaLinha, stop,
	auxInicioImagem, auxValido										: STD_LOGIC;
	signal amostraMemory, result1, result2						: STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal auxIn0, auxIn1, auxIn2, auxIn3, auxIn4, auxIn5	: STD_LOGIC_VECTOR (7 DOWNTO 0);

	TYPE STATE_TYPE IS (estadoParado, estadoProcessando);
	SIGNAL estado_atual, proximo_estado: STATE_TYPE;

begin

	RegBank : Memory
		PORT MAP (
			address => auxAddress, clock => clk, data => sampleIn,
			wren => auxWriteEnable, q => amostraMemory
		);

	Interpolador1 : Interpolador
		PORT MAP (
			clock => clk, inicio => auxInicio, amostraIN0 => auxIn0, amostraIN1 => auxIn1, 
			amostraIN2 => auxIn2, amostraIN3 => auxIn3, amostraIN4 => auxIn4, amostraIN5 => auxIn5,
			amostraOUT => result1, amostraOUT2 => result2, endereco => auxAddress,
			trocaLinha => auxTrocaLinha, inicioImagem => auxInicioImagem, valido => auxValido
		);

	Passador1 : Passador
		PORT MAP (
			clock => clk, entrada => amostraMemory, saida0 => auxIn0, saida1 => auxIn1, 
			saida2 => auxIn2, saida3 => auxIn3, saida4 => auxIn4, saida5 => auxIn5
		);


	process (reset, clk)
	begin
		if (reset = '1') then
			estado_atual <= estadoParado;
		elsif (clk'EVENT and clk = '1') then
			estado_atual <= proximo_estado;
		end if;
	end process;
	
	process (estado_atual, clk)
	begin
		case estado_atual is
			when estadoParado =>
				sampleOut1 <= "00000000";
				sampleOut2 <= "00000000";
				valido <= '0';
				newLine <= '0';
				if start = '1' then
					proximo_estado <= estadoProcessando;
				else
					proximo_estado <= estadoParado;
				end if;
			when estadoProcessando =>
				sampleOut1 <= result1;
				sampleOut2 <= result2;
				valido <= auxValido;
				newLine <= auxTrocaLinha;
				auxWriteEnable <= '1';
				--if (auxTrocaLinha = '1') then
				--	auxWriteEnable <= '1';
				--else
				--	auxWriteEnable <= '0';
				--end if;
				if auxInicioImagem = '1' then
					proximo_estado <= estadoParado;
				else
					proximo_estado <= estadoProcessando;
				end if;
		end case;
	end process;
	
end behavioral;