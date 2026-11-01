----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
--==================================================
entity MAIN is

Port (
		RESET : in  STD_LOGIC;
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
--===================================================

architecture Behavioral of MAIN is

	signal min, sec  : STD_LOGIC_VECTOR (5 downto 0);
	signal hour : STD_LOGIC_VECTOR (4 downto 0);
	signal msec, msect0 : STD_LOGIC_VECTOR (9 downto 0);
	signal msec0, msec1, msec2, sec1, sec2, min1, min2, hour2 : STD_LOGIC_VECTOR (3 downto 0);
	signal hour1 : STD_LOGIC_VECTOR (1 downto 0);
	signal temp0, temp1 : STD_LOGIC_VECTOR (3 downto 0);

begin

--===================================================

------------------------
-- CLOCK & RESET
------------------------
process(clk, reset)
begin	
	------------------------
	-- RESET
	------------------------
	if(reset = '1') then
		hour <= (others => '0');
		min <= (others => '0');
		sec <= (others => '0');
		msec <= (others => '0');
	------------------------
	-- CLOCK
	------------------------
	elsif ( (clk'event) and (clk='0') ) then
	
		-- SET
		if (SEL="00") then
			sec <= STD_LOGIC_VECTOR(unsigned(din1) * 10 + unsigned(din0));
		elsif (SEL="01") then
			min <= STD_LOGIC_VECTOR(unsigned(din1) * 10 + unsigned(din0));
		elsif (SEL="10") then
			hour <= STD_LOGIC_VECTOR(unsigned(din1) * 10 + unsigned(din0));
		end if;
	
		msec <= STD_LOGIC_VECTOR(unsigned(msec) + 1); -- Increase msec by 1ms On Clock
		
		---- msec
		if (unsigned(msec) >= 999) then
			msec <= (others => '0');
			sec <= STD_LOGIC_VECTOR(unsigned(sec) + 1); -- Increase sec by 1s
			---- sec
			if (unsigned(sec) >= 59) then
				sec <= (others => '0');
				min <= STD_LOGIC_VECTOR(unsigned(min) + 1); -- Increase min by 1m
				---- min
				if (unsigned(min) >= 59) then
					min <= (others => '0');
					hour <= STD_LOGIC_VECTOR(unsigned(hour) + 1); -- Increase hour by 1h
					---- hour
					if (unsigned(hour) >= 23) then 
						hour <= (others => '0'); -- Reset hour
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
msec2 <=	"1001" when unsigned(msec) >= 900 else
			"1000" when unsigned(msec) >= 800 else
			"0111" when unsigned(msec) >= 700 else
			"0110" when unsigned(msec) >= 600 else
			"0101" when unsigned(msec) >= 500 else
			"0100" when unsigned(msec) >= 400 else
			"0011" when unsigned(msec) >= 300 else
			"0010" when unsigned(msec) >= 200 else
			"0001" when unsigned(msec) >= 100 else
			(others => '0');

msect0 <= STD_LOGIC_VECTOR(unsigned(msec) - (unsigned(msec2) * 100));

msec1 <= "1001" when unsigned(msect0) >= 90 else
			"1000" when unsigned(msect0) >= 80 else
			"0111" when unsigned(msect0) >= 70 else
			"0110" when unsigned(msect0) >= 60 else
			"0101" when unsigned(msect0) >= 50 else
			"0100" when unsigned(msect0) >= 40 else
			"0011" when unsigned(msect0) >= 30 else
			"0010" when unsigned(msect0) >= 20 else
			"0001" when unsigned(msect0) >= 10 else
			(others => '0');
			
msec0 <= STD_LOGIC_VECTOR(unsigned(msect0) - unsigned(msec1) * 10);

x2 <= msec2; --digit 1
x1 <= msec1; --digit 2
x0 <= msec0; --digit 3

---- s
sec1 <= 	"0101" when unsigned(sec) >= 50 else
			"0100" when unsigned(sec) >= 40 else
			"0011" when unsigned(sec) >= 30 else
			"0010" when unsigned(sec) >= 20 else
			"0001" when unsigned(sec) >= 10 else
			(others => '0');
			
temp0 <= STD_LOGIC_VECTOR(unsigned(sec1) * 10);
sec2 <= STD_LOGIC_VECTOR(unsigned(sec) - unsigned(temp0));

s1 <= sec1; --digit 1
s2 <= sec2; --digit 2

-- m
min1 <= 	"0101" when unsigned(min) >= 50 else
			"0100" when unsigned(min) >= 40 else
			"0011" when unsigned(min) >= 30 else
			"0010" when unsigned(min) >= 20 else
			"0001" when unsigned(min) >= 10 else
			(others => '0');

temp1 <= STD_LOGIC_VECTOR(unsigned(min1) * 10);
min2 <= STD_LOGIC_VECTOR(unsigned(min) - unsigned(temp1));
		
m1 <= min1;
m2 <= min2;

-- h
hour1 <= "10" when unsigned(hour) >= 20 else
			"01" when unsigned(hour) >= 10 else
			(others => '0');

hour2 <= STD_LOGIC_VECTOR(unsigned(hour) - unsigned(hour1) * 10);

h1 <= "00" & hour1;
h2 <= hour2;

end Behavioral;