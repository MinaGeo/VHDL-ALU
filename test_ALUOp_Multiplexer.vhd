LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_ALUOp_Multiplexer IS
END test_ALUOp_Multiplexer;
 
ARCHITECTURE behavior OF test_ALUOp_Multiplexer IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALUOp_Multiplexer
    PORT(
         Selector : IN  std_logic_vector(3 downto 0);
         AndIn : IN  std_logic_vector(31 downto 0);
         OrIn : IN  std_logic_vector(31 downto 0);
         AddIn : IN  std_logic_vector(31 downto 0);
         SubIn : IN  std_logic_vector(31 downto 0);
         NorIn : IN  std_logic_vector(31 downto 0);
         Output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Selector : std_logic_vector(3 downto 0) := (others => '0');
   signal AndIn : std_logic_vector(31 downto 0) := (others => '0');
   signal OrIn : std_logic_vector(31 downto 0) := (others => '0');
   signal AddIn : std_logic_vector(31 downto 0) := (others => '0');
   signal SubIn : std_logic_vector(31 downto 0) := (others => '0');
   signal NorIn : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALUOp_Multiplexer PORT MAP (
          Selector => Selector,
          AndIn => AndIn,
          OrIn => OrIn,
          AddIn => AddIn,
          SubIn => SubIn,
          NorIn => NorIn,
          Output => Output
        );


   -- Stimulus process
   stim_proc: process
   begin		
      
		--Selector <= "0101";
		AndIn <= "00000000000000000000000000000010";

      wait;
   end process;

END;
