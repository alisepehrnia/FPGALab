----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:56:15 06/18/2020 
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
    Port ( ina : in  STD_LOGIC_VECTOR (3 downto 0);
           inb : in  STD_LOGIC_VECTOR (3 downto 0);
           outx : out  STD_LOGIC_VECTOR (7 downto 0));
end MAIN;

architecture Behavioral of MAIN is
begin

outx <= STD_LOGIC_VECTOR( unsigned(ina) * unsigned(inb) );

end Behavioral;

