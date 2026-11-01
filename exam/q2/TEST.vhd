--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:09:32 06/20/2020
-- Design Name:   
-- Module Name:   G:/FPGA/FPGA_EXAM_Q2/TEST.vhd
-- Project Name:  FPGA_EXAM_Q2
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
USE ieee.numeric_std.ALL;
 
ENTITY TEST IS
END TEST;
 
ARCHITECTURE behavior OF TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MAIN
    PORT(
         CNT : IN  std_logic_vector(2 downto 0);
         RIN0 : IN  std_logic_vector(7 downto 0);
         RIN1 : IN  std_logic_vector(7 downto 0);
         ROUT : OUT  std_logic_vector(7 downto 0);
        );
    END COMPONENT;
    

   --Inputs
   signal CNT : std_logic_vector(2 downto 0) := (others => '0');
   signal RIN0 : std_logic_vector(7 downto 0) := (others => '0');
   signal RIN1 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal ROUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   --constant CLK_period : time := 1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MAIN PORT MAP (
          CNT => CNT,
          RIN0 => RIN0,
          RIN1 => RIN1,
          ROUT => ROUT
        );

   -- Clock process definitions
--   CLK_process :process
--   begin
--		CLK <= '0';
--		wait for CLK_period/2;
--		CLK <= '1';
--		wait for CLK_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		wait for 1 ns;
		
		RIN0 <= "10001000";
		RIN1 <= "10011001";
		
		CNT <= "000";
		wait for 1 ns;
		
		CNT <= "001";
		wait for 1 ns;
		
		CNT <= "010";
		wait for 1 ns;
		
		CNT <= "011";
		wait for 1 ns;
		
		CNT <= "100";
		wait for 1 ns;
		
		CNT <= "101";
		wait for 1 ns;
		
		CNT  <=  "110";
		wait for 1 ns;
		
		CNT  <=  "111";
		wait for 1 ns;

      wait;
   end process;

END;
