----------------------------------------------------------------------------------
-- Company: 
-- Engineer: ALI SEPEHRNIA
-- 
-- Create Date:    13:02:57 06/17/2020 
-- Design Name: 	 WATCH
-- Module Name:    MAIN - Behavioral 
-- Project Name: 	 WATCH
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
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           DIN0 : in  STD_LOGIC_VECTOR (3 downto 0);
           DIN1 : in  STD_LOGIC_VECTOR (3 downto 0);
           X0 : out  STD_LOGIC_VECTOR (3 downto 0);
           X1 : out  STD_LOGIC_VECTOR (3 downto 0);
           X2 : out  STD_LOGIC_VECTOR (3 downto 0);
           S2 : out  STD_LOGIC_VECTOR (3 downto 0);
           S1 : out  STD_LOGIC_VECTOR (3 downto 0);
           M2 : out  STD_LOGIC_VECTOR (3 downto 0);
           M1 : out  STD_LOGIC_VECTOR (3 downto 0);
           H2 : out  STD_LOGIC_VECTOR (3 downto 0);
           H1 : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end MAIN;

architecture Behavioral of MAIN is

	signal hour : integer range 0 to 24;
	signal min, sec : integer range 0 to 60;
	signal msec, msect0 : integer range 0 to 1000;
	signal msec0, msec1, msec2, sec2, min2, hour2 : integer range 0 to 9;
	signal sec1, min1 : integer range 0 to 6;
	signal hour1 : integer range 0 to 2;

begin

------------------------
-- CLOCK & RESET
------------------------
process(clk, reset)
begin	
	------------------------
	-- RESET
	------------------------
	if(reset = '1') then
		hour <= 0;
		min <= 0;
		sec <= 0;
		msec <= 0;
	------------------------
	-- CLOCK
	------------------------
	elsif ( (clk'event) and (clk='0') ) then
	
		-- SET
		if (SEL="00") then
			sec <= to_integer(unsigned(din1) * 10 + unsigned(din0));
		elsif (SEL="01") then
			min <= to_integer(unsigned(din1) * 10 + unsigned(din0));
		elsif (SEL="10") then
			hour <= to_integer(unsigned(din1) * 10 + unsigned(din0));
		end if;
	
		msec <= msec + 1; -- Increase msec by 1ms On Clock
		
		---- msec
		if (msec >= 999) then
			msec <= 0;
			sec <= sec + 1; -- Increase sec by 1s
			---- sec
			if (sec >= 59) then
				sec <= 0;
				min <= min + 1; -- Increase min by 1m
				---- min
				if (min >= 59) then
					min <= 0;
					hour <= hour + 1; -- Increase hour by 1h
					---- hour
					if (hour >= 23) then 
						hour <= 0; -- Reset hour
					end if;
				end if;
			end if;
		end if;
		
	end if;
	
end process;

------------------------
-- Conversions
------------------------

---- ms
msec2 <=	9 when msec >= 900 else
			8 when msec >= 800 else
			7 when msec >= 700 else
			6 when msec >= 600 else
			5 when msec >= 500 else
			4 when msec >= 400 else
			3 when msec >= 300 else
			2 when msec >= 200 else
			1 when msec >= 100 else
			0;

msect0 <= msec - msec2 * 100;

msec1 <= 9 when msect0 >= 90 else
			8 when msect0 >= 80 else
			7 when msect0 >= 70 else
			6 when msect0 >= 60 else
			5 when msect0 >= 50 else
			4 when msect0 >= 40 else
			3 when msect0 >= 30 else
			2 when msect0 >= 20 else
			1 when msect0 >= 10 else
			0;
			
msec0 <= msec - (msec2 * 100 + msec1 * 10);

x2 <= std_logic_vector(to_unsigned(msec2, 4)); --digit 1
x1 <= std_logic_vector(to_unsigned(msec1, 4)); --digit 2
x0 <= std_logic_vector(to_unsigned(msec0, 4)); --digit 3

---- s
sec1 <= 	5 when sec >= 50 else
			4 when sec >= 40 else
			3 when sec >= 30 else
			2 when sec >= 20 else
			1 when sec >= 10 else
			0;
			
sec2 <= sec - sec1 * 10;

s1 <= std_logic_vector(to_unsigned(sec1, 4)); --digit 1
s2 <= std_logic_vector(to_unsigned(sec2, 4)); --digit 2

-- m
min1 <= 	5 when min >= 50 else
			4 when min >= 40 else
			3 when min >= 30 else
			2 when min >= 20 else
			1 when min >= 10 else
			0;
			
min2 <= min - min1 * 10;
		
m1 <= std_logic_vector(to_unsigned(min1, 4));
m2 <= std_logic_vector(to_unsigned(min2, 4));

-- h
hour1 <= 2 when hour >= 20 else
			1 when hour >= 10 else
			0;

hour2 <= hour - hour1 * 10;

h1 <= std_logic_vector(to_unsigned(hour1, 4));
h2 <= std_logic_vector(to_unsigned(hour2, 4));

end Behavioral;