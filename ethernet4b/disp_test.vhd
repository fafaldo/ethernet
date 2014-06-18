--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:32:02 04/01/2014
-- Design Name:   
-- Module Name:   C:/Users/fafik/Dropbox/infa/xilinx/ethernet4/disp_test.vhd
-- Project Name:  ethernet
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: header_display
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
 
ENTITY disp_test IS
END disp_test;
 
ARCHITECTURE behavior OF disp_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT header_display
    PORT(
         char : OUT  std_logic_vector(7 downto 0);
         char_we : OUT  std_logic;
         clk : IN  std_logic;
         ram_clk : OUT  std_logic;
         ram_enable : OUT  std_logic;
         ram_output : IN  std_logic_vector(7 downto 0);
         start : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ram_output : std_logic_vector(7 downto 0) := (others => '0');
   signal start : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal char : std_logic_vector(7 downto 0);
   signal char_we : std_logic;
   signal ram_clk : std_logic;
   signal ram_enable : std_logic;

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: header_display PORT MAP (
          char => char,
          char_we => char_we,
          clk => clk,
          ram_clk => ram_clk,
          ram_enable => ram_enable,
          ram_output => ram_output,
          start => start,
          reset => reset
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   start <= '0', '1' after 50 ns, '0' after 100 ns;

END;
