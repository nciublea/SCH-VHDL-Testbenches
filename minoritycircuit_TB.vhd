-- Vhdl test bench created from schematic /home/ise/Lab1_group3/weliveweLOVEwelie.sch - Mon Sep 25 14:16:55 2023
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
ENTITY weliveweLOVEwelie_weliveweLOVEwelie_sch_tb IS
END weliveweLOVEwelie_weliveweLOVEwelie_sch_tb;
ARCHITECTURE behavioral OF weliveweLOVEwelie_weliveweLOVEwelie_sch_tb IS 

   COMPONENT weliveweLOVEwelie
   PORT( A	:	IN	STD_LOGIC; 
          B	:	IN	STD_LOGIC; 
          C	:	IN	STD_LOGIC; 
          F	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL A_tb	:	STD_LOGIC;
   SIGNAL B_tb	:	STD_LOGIC;
   SIGNAL C_tb	:	STD_LOGIC;
   SIGNAL F_tb	:	STD_LOGIC;

BEGIN

   UUT: weliveweLOVEwelie PORT MAP(
		A => A_tb, 
		B => B_tb, 
		C => C_tb, 
		F => F_tb
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
	constant period: time := 20 ns;
   BEGIN
	
	A_tb <= '0'; -- apply input combination 000 and check outputs
	B_tb <= '0';
	C_tb <= '0';
	wait for period;
	assert (F_tb = '1')
	report "test failed for input combination 000" severity error;
	
	A_tb <= '0'; -- apply input combination 001 and check outputs
	B_tb <= '0';
	C_tb <= '1';
	wait for period;
	assert (F_tb = '1')
	report "test failed for input combination 001" severity error;
	
	A_tb <= '0'; -- apply input combination 010 and check outputs
	B_tb <= '1';
	C_tb <= '0';
	wait for period;
	assert (F_tb = '1')
	report "test failed for input combination 010" severity error;
	
	A_tb <= '0'; -- apply input combination 011 and check outputs
	B_tb <= '1';
	C_tb <= '1';
	wait for period;
	assert (F_tb = '0')
	report "test failed for input combination 011" severity error;
	
	A_tb <= '1'; -- apply input combination 100 and check outputs
	B_tb <= '0';
	C_tb <= '0';
	wait for period;
	assert (F_tb = '1')
	report "test failed for input combination 100" severity error;
      
	A_tb <= '1'; -- apply input combination 101 and check outputs
	B_tb <= '0';
	C_tb <= '1';
	wait for period;
	assert (F_tb = '0')
	report "test failed for input combination 101" severity error;
	
	A_tb <= '1'; -- apply input combination 110 and check outputs
	B_tb <= '1';
	C_tb <= '0';
	wait for period;
	assert (F_tb = '0')
	report "test failed for input combination 110" severity error;
	
	A_tb <= '1'; -- apply input combination 111 and check outputs
	B_tb <= '1';
	C_tb <= '1';
	wait for period;
	assert (F_tb = '0')
	report "test failed for input combination 111" severity error;
	
		WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;

