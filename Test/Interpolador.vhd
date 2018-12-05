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
	
	signal EE, FF, GG, HH, II, JJ, aux1, aux2, aux4: STD_LOGIC_VECTOR (15 DOWNTO 0);
	signal aux3: STD_LOGIC_VECTOR (7 DOWNTO 0);
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
					EE <= "00000000" & amostraIN0;
					FF <= ("000000" & amostraIN1(7 DOWNTO 6) & (amostraIN1(5 DOWNTO 0) & "00")) + amostraIN1;
					GG <= ("0000" & amostraIN2(7 DOWNTO 4) & (amostraIN2(3 DOWNTO 0) & "0000")) + ("000000" & amostraIN2(7 DOWNTO 6) & (amostraIN2(5 DOWNTO 0) & "00"));
					HH <= ("0000" & amostraIN3(7 DOWNTO 4) & (amostraIN3(3 DOWNTO 0) & "0000")) + ("000000" & amostraIN3(7 DOWNTO 6) & (amostraIN3(5 DOWNTO 0) & "00"));
					II <= ("000000" & amostraIN4(7 DOWNTO 6) & (amostraIN4(5 DOWNTO 0) & "00")) + amostraIN4;
					JJ <= "00000000" & amostraIN5;
					amostraOUT <= amostraIN0;
					aux1 <= (EE - FF + GG + HH - II + JJ);
					aux2 <= "00000" & aux1(15 DOWNTO 5);
					if (aux2 >= "0000010000000000") then
						aux3 <= "00000000";
					elsif (aux2 >= "11111111") then
						aux3 <= "11111111";
					else
						aux3 <= aux2(7 DOWNTO 0);
					end if;
					amostraOUT2 <= aux3;
					valido <= '1';
					auxEndereco <= auxEndereco + 1;
				else
					valido <= '1';
					inicioImagem <= '1';
					auxEndereco <= "0000000000";
					processing <= '0';
				end if;
			end if;
		end if;
	end process;
	
end behavioral;