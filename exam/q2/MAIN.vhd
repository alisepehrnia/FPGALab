library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

------------------------------------------------------
entity MAIN is
    Port ( CNT : in  STD_LOGIC_VECTOR (2 downto 0);
           RIN0 : in  STD_LOGIC_VECTOR (7 downto 0);
           RIN1 : in  STD_LOGIC_VECTOR (7 downto 0);
			  ROUT : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end MAIN;
------------------------------------------------------

------------------------------------------------------
architecture Behavioral of MAIN is

signal xout : STD_LOGIC_VECTOR (7 downto 0);

begin

	
	xout <= 			STD_LOGIC_VECTOR (unsigned(RIN0) + 1) 							when CNT = "000" else
						STD_LOGIC_VECTOR (unsigned(RIN1) + 1) 							when CNT = "001" else
						STD_LOGIC_VECTOR (unsigned(RIN0) + unsigned(RIN1)) 		when CNT = "010" else
						STD_LOGIC_VECTOR (unsigned(RIN0) - unsigned(RIN1)) 		when CNT = "011" else
						STD_LOGIC_VECTOR (unsigned(RIN0) AND unsigned(RIN1)) 		when CNT = "100" else
						STD_LOGIC_VECTOR (unsigned(RIN0) OR unsigned(RIN1)) 		when CNT = "101" else
						(RIN0(6 downto 0) & '0') 											when CNT = "110" else
						('0' & RIN0(7 downto 1)) 											when CNT = "111" else
						(others => '0');
						
	ROUT <= xout;

end Behavioral;
------------------------------------------------------