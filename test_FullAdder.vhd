LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_FullAdder IS
END test_FullAdder;
 
ARCHITECTURE behavior OF test_FullAdder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FullAdder
    PORT(
         Num1 : IN  std_logic_vector(31 downto 0);
         Num2 : IN  std_logic_vector(31 downto 0);
         CarryIN : IN  std_logic;
         Sum : OUT  std_logic_vector(31 downto 0);
         CarryOUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Num1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Num2 : std_logic_vector(31 downto 0) := (others => '0');
   signal CarryIN : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(31 downto 0);
   signal CarryOUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FullAdder PORT MAP (
          Num1 => Num1,
          Num2 => Num2,
          CarryIN => CarryIN,
          Sum => Sum,
          CarryOUT => CarryOUT
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
     Num1 <= "10000000000000010000000000000001";
	  Num2 <= "10000000000000010000000000000001";
		CarryIN <= '1';
		
      wait;
   end process;

END;
