library IEEE;
use IEEE.std_logic_1164.all;
--Use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

ENTITY Interpolador IS
	port( clock, inicio  				:	in STD_LOGIC;
			amostraIN0					:	in STD_LOGIC_VECTOR (7 DOWNTO 0);
			amostraIN1					:	in STD_LOGIC_VECTOR (7 DOWNTO 0);
			amostraIN2					:	in STD_LOGIC_VECTOR (7 DOWNTO 0);
			amostraIN3					:	in STD_LOGIC_VECTOR (7 DOWNTO 0);
			amostraIN4					:	in STD_LOGIC_VECTOR (7 DOWNTO 0);
			amostraIN5					:	in STD_LOGIC_VECTOR (7 DOWNTO 0);
			amostraOUT, amostraOUT2		:	out STD_LOGIC_VECTOR (7 DOWNTO 0);
			endereco						:	out STD_LOGIC_VECTOR (9 DOWNTO 0);
			trocaLinha, inicioImagem, valido	:	out STD_LOGIC 
			);
END Interpolador;

architecture behavioral of Interpolador is
	
	signal EE, FF, GG, HH, II, JJ, aux: STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal processing: STD_LOGIC;
	signal auxEndereco: STD_LOGIC_VECTOR(9 DOWNTO 0);
	
begin

	process(clock, inicio)
		variable auxTrocaLinha: integer range 0 to 511;
		variable auxInicioImagem: integer range 0 to 511 := 511;
	begin
		if (clock = '1' and clock'event) then
			if(inicio = '1') then
				auxInicioImagem := 0;
				processing <= '1';
			end if;
			trocaLinha <= '0';
			inicioImagem <= '0';
			valido <= '0';
			endereco <= auxEndereco;
			if (processing = '1') then
				if (auxInicioImagem /= 511) then
					auxTrocaLinha := auxTrocaLinha + 1;
					if (auxTrocaLinha = 511) then 
						auxInicioImagem := auxInicioImagem + 1;
						trocaLinha <= '1';
						auxTrocaLinha := 0;	
					end if;
					EE <= amostraIN0;
					FF <= (amostraIN1(5 DOWNTO 0) & "00") + amostraIN1;
					GG <= (amostraIN2(3 DOWNTO 0) & "0000") + (amostraIN2(5 DOWNTO 0) & "00");
					HH <= (amostraIN3(3 DOWNTO 0) & "0000") + (amostraIN3(5 DOWNTO 0) & "00");
					II <= (amostraIN4(5 DOWNTO 0) & "00") + amostraIN4;
					JJ <= amostraIN5;
					amostraOUT <= amostraIN0;
					aux <= (EE - FF + GG + HH - II + JJ);
					amostraOUT2 <= "00000" & aux(7 DOWNTO 5);
					valido <= '1';
					auxEndereco <= auxEndereco + 1;
				else
					valido <= '1';
					inicioImagem <= '1';
					processing <= '0';
					if (auxEndereco = "11111111") then
						auxEndereco <= "0000000000";
					end if;
				end if;
			end if;
		end if;
	end process;
	
end behavioral;