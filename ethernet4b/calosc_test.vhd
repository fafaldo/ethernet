-- Vhdl test bench created from schematic C:\Users\fafik\Dropbox\infa\git\ethernet\ethernet4b\CU_test1.sch - Sat Aug 30 21:03:36 2014
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY CU_test1_CU_test1_sch_tb IS
END CU_test1_CU_test1_sch_tb;
ARCHITECTURE behavioral OF CU_test1_CU_test1_sch_tb IS 

   COMPONENT CU_test1
   PORT( clk	:	IN	STD_LOGIC; 
          E_RX_D	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0) := (others=>'0'); 
          E_RX_CLK	:	IN	STD_LOGIC; 
          E_RX_DV	:	IN	STD_LOGIC; 
          full	:	OUT	STD_LOGIC; 
          test	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          REST	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL E_RX_D	:	STD_LOGIC_VECTOR (3 DOWNTO 0) := (others=>'0');
   SIGNAL E_RX_CLK	:	STD_LOGIC;
   SIGNAL E_RX_DV	:	STD_LOGIC;
   SIGNAL full	:	STD_LOGIC;
   SIGNAL test	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL REST	:	STD_LOGIC;

BEGIN

   UUT: CU_test1 PORT MAP(
		clk => clk, 
		E_RX_D => E_RX_D, 
		E_RX_CLK => E_RX_CLK, 
		E_RX_DV => E_RX_DV, 
		full => full, 
		test => test, 
		REST => REST
   );

	process
	begin
		clk <= '0';
		wait for 1 ns;
		clk <= '1';
		wait for 1 ns;
	end process;
	
	process
	begin
		E_RX_CLK <= '0';
		wait for 10 ns;
		E_RX_CLK <= '1';
		wait for 10 ns;
	end process;
	
	E_RX_DV <= '0', '1' after 50 ns, '0' after 650 ns;  
	
	E_RX_D <= x"0",
				 x"1" after 50 ns,
				 x"2" after 70 ns,
				 x"3" after 90 ns,
				 x"4" after 110 ns,
				 x"5" after 130 ns,
				 x"6" after 150 ns,
				 x"7" after 170 ns,
				 x"8" after 190 ns,
				 x"9" after 210 ns,
				 x"a" after 230 ns,
				 x"b" after 250 ns,
				 x"c" after 270 ns,
				 x"d" after 290 ns,
				 x"e" after 310 ns,
				 x"f" after 330 ns,
				 x"0" after 350 ns,
				 x"1" after 370 ns,
				 x"2" after 390 ns,
				 x"3" after 410 ns,
				 x"4" after 430 ns,
				 x"5" after 450 ns,
				 x"6" after 470 ns,
				 x"7" after 490 ns,
				 x"8" after 510 ns,
				 x"9" after 530 ns,
				 x"a" after 550 ns,
				 x"b" after 570 ns,
				 x"c" after 590 ns,
				 x"d" after 610 ns,
				 x"e" after 630 ns;

END;
