-- Vhdl test bench created from schematic
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
ENTITY TravelCrct_TravelCrct_sch_tb IS
END TravelCrct_TravelCrct_sch_tb;
ARCHITECTURE behavioral OF TravelCrct_TravelCrct_sch_tb IS 

   COMPONENT TravelCrct
   PORT( Hootervill	:	IN	STD_LOGIC; 
          Mayberry	:	IN	STD_LOGIC; 
          Mt_Pilot	:	IN	STD_LOGIC; 
          Silver_City	:	IN	STD_LOGIC; 
          Six	:	OUT	STD_LOGIC; 
          Three	:	OUT	STD_LOGIC; 
          Two	:	OUT	STD_LOGIC; 
          One	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Hootervill	:	STD_LOGIC;
   SIGNAL Mayberry	:	STD_LOGIC;
   SIGNAL Mt_Pilot	:	STD_LOGIC;
   SIGNAL Silver_City	:	STD_LOGIC;
   SIGNAL Six	:	STD_LOGIC;
   SIGNAL Three	:	STD_LOGIC;
   SIGNAL Two	:	STD_LOGIC;
   SIGNAL One	:	STD_LOGIC;

BEGIN

   UUT: TravelCrct PORT MAP(
		Hootervill => Hootervill, 
		Mayberry => Mayberry, 
		Mt_Pilot => Mt_Pilot, 
		Silver_City => Silver_City, 
		Six => Six,
		Three => Three,
		Two => Two,
		One => One
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
			constant period: time:=20 ns;
   BEGIN
	
	Hootervill <= '1';
	Mayberry <= '1';
	Mt_pilot <= '0';
	Silver_City <= '0';
	wait for period;
	assert(One = '1');
	assert (Two = '0');
	assert (Three = '0');
	assert (Six = '0');
	report "test failed for input combination 1100" severity error;
	
	Hootervill <= '1';
	Mayberry <= '0';
	Mt_pilot <= '1';
	Silver_City <= '0';
	wait for period;
	assert (One = '0');
	assert (Two = '1');
	assert (Three = '0');
	assert (Six = '0');
	report "test failed for input combination 1010" severity error;
	
	Hootervill <= '1';
	Mayberry <= '0';
	Mt_pilot <= '0';
	Silver_City <= '1';
	wait for period;
	assert (One = '0');
	assert (Two = '0');
	assert (Three = '1');
	assert (Six = '0');
	report "test failed for input combination 1001" severity error;
		
	Hootervill <= '0';
	Mayberry <= '1';
	Mt_pilot <= '1';
	Silver_City <= '0';
	wait for period;
	assert (One = '1');
	assert (Two = '1');
	assert (Three = '0');
	assert (Six = '0');
	report "test failed for input combination 0110" severity error;
		
	Hootervill <= '0';
	Mayberry <= '1';
	Mt_pilot <= '0';
	Silver_City <= '1';
	wait for period;
	assert (One = '1');
	assert (Two = '0');
	assert (Three = '1');
	assert (Six = '0');
	report "test failed for input combination 1010" severity error;
	
	Hootervill <= '0';
	Mayberry <= '0';
	Mt_pilot <= '1';
	Silver_City <= '1';
	wait for period;
	assert (One = '0');
	assert (Two = '0');
	assert (Three = '0');
	assert (Six = '1');
	report "test failed for input combination 0011" severity error;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
