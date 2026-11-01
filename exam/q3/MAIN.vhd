----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:19:44 06/20/2020 
-- Design Name: 
-- Module Name:    MAIN - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity MAIN is
    Port ( RESET : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           XOUT : out  STD_LOGIC_VECTOR (3 downto 0);
           OVF : out  STD_LOGIC;
           CNT : in  STD_LOGIC);
end MAIN;

architecture Behavioral of MAIN is
	signal d , q , r_next , r_reg : std_logic_vector (3 downto 0) ;
begin

---------------------------------------------------
	--		DFF
	---------------------------------------------------
	process (clk , reset)
	
	begin
		if (reset = '1') then
			q <= "0000" ;
		elsif ( (clk'event) and (clk='1') ) then
			q <= d ;
		end if;
	
	end process;
	
	d <= r_next ;
	r_reg <= q ;
	
	---------------------------------------------------
	--		Next State Logic
	---------------------------------------------------
	r_next <= 	std_logic_vector( unsigned (r_reg) - 1 ) when CNT ='0' else
					std_logic_vector( unsigned (r_reg) + 1 ) when CNT ='1' else (others => '0');
	
	OVF <= '1' when r_reg = "1111" else '0';
	
	---------------------------------------------------
	--		Output Logic
	---------------------------------------------------
	XOUT <= r_reg ;

end Behavioral;

