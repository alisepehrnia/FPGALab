----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:20 06/18/2020 
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
    Port ( 
				a,b,c,d : in  STD_LOGIC_VECTOR (7 downto 0);
				s : in  STD_LOGIC_VECTOR (1 downto 0);
				x : out  STD_LOGIC_VECTOR (7 downto 0)
			 );
end MAIN;

architecture Behavioral of MAIN is
begin

x <= a when s="00" else
	  b when s="01" else
	  c when s="10" else
	  d;

end Behavioral;

