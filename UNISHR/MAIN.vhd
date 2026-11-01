----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity MAIN is
    Port ( AIN : in  STD_LOGIC_VECTOR (3 downto 0);
           CLK : in  STD_LOGIC;
           CTRL : in  STD_LOGIC_VECTOR (1 downto 0);
           RESET : in  STD_LOGIC;
           XOUT : out  STD_LOGIC_VECTOR (3 downto 0));
end MAIN;

architecture Behavioral of MAIN is
	signal d , q , r_next , r_reg : std_logic_vector (3 downto 0);

begin

	---------------------------------------------------
	--		DFF
	---------------------------------------------------
	process (clk , reset)
	
	begin
		if (reset = '1') then
			q <= "0000" ;
		elsif ((clk'event) and (clk='1')) then
			q <= d ;
		end if;
	
	end process;
	
	d <= r_next ;
	---------------------------------------------------
	--		Next State Logic
	---------------------------------------------------
	r_next <= 	 r_reg 							when ctrl = "00" else
				 r_reg(2 downto 0) & AIN(0) 	when ctrl = "01" else
				 AIN(3) & r_reg(3 downto 1)		when ctrl = "10" else
				 AIN ;
	
	
	---------------------------------------------------
	--		Output Logic
	---------------------------------------------------
	r_reg <= q ;
	XOUT <= r_reg ;

end Behavioral;

