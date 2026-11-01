--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:20:05 06/19/2020
-- Design Name:   
-- Module Name:   G:/FPGA/WATCH2/TEST.vhd
-- Project Name:  WATCH2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MAIN
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST IS
END TEST;
 
ARCHITECTURE behavior OF TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MAIN
    PORT(
         RESET : IN  std_logic;
         CLK : IN  std_logic;
         SEL : IN  std_logic_vector(1 downto 0);
         DIN0 : IN  std_logic_vector(3 downto 0);
         DIN1 : IN  std_logic_vector(3 downto 0);
         X0 : OUT  std_logic_vector(3 downto 0);
         X1 : OUT  std_logic_vector(3 downto 0);
         X2 : OUT  std_logic_vector(3 downto 0);
         S2 : OUT  std_logic_vector(3 downto 0);
         S1 : OUT  std_logic_vector(3 downto 0);
         M2 : OUT  std_logic_vector(3 downto 0);
         M1 : OUT  std_logic_vector(3 downto 0);
         H2 : OUT  std_logic_vector(3 downto 0);
         H1 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RESET : std_logic := '0';
   signal CLK : std_logic := '0';
   signal SEL : std_logic_vector(1 downto 0) := (others => '0');
   signal DIN0 : std_logic_vector(3 downto 0) := (others => '0');
   signal DIN1 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal X0 : std_logic_vector(3 downto 0);
   signal X1 : std_logic_vector(3 downto 0);
   signal X2 : std_logic_vector(3 downto 0);
   signal S2 : std_logic_vector(3 downto 0);
   signal S1 : std_logic_vector(3 downto 0);
   signal M2 : std_logic_vector(3 downto 0);
   signal M1 : std_logic_vector(3 downto 0);
   signal H2 : std_logic_vector(3 downto 0);
   signal H1 : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 1 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MAIN PORT MAP (
          RESET => RESET,
          CLK => CLK,
          SEL => SEL,
          DIN0 => DIN0,
          DIN1 => DIN1,
          X0 => X0,
          X1 => X1,
          X2 => X2,
          S2 => S2,
          S1 => S1,
          M2 => M2,
          M1 => M1,
          H2 => H2,
          H1 => H1
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		RESET <= '1';
		wait for 1 ms;
		
		RESET <= '0';
		
--		-- Set Hour To 23
--		DIN0 <= "0011"; 
--		DIN1 <= "0010"; 
--		SEL <= "10";
--		wait for 2 ms;
--		
--		SEL <= "11";
--		
--		-- Set Minute To 37
--		DIN0 <= "0111";
--		DIN1 <= "0011";
--		SEL <= "01";
--		wait for 2 ms;
--		
--		SEL <= "11";
--		
--		-- Set Second To 49
--		DIN0 <= "1001";
--		DIN1 <= "0100";
--		SEL <= "00";
--		wait for 2 ms;
		
		SEL <= "11";
		DIN0 <= "0000";
		DIN1 <= "0000";

      wait;
   end process;

END;
