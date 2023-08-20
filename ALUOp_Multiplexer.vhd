library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALUOp_Multiplexer is

    Port ( Selector : in  STD_LOGIC_VECTOR (3 downto 0);
           AndIn : in  STD_LOGIC_VECTOR (31 downto 0);
           OrIn : in  STD_LOGIC_VECTOR (31 downto 0);
           AddIn : in  STD_LOGIC_VECTOR (31 downto 0);
           SubIn : in  STD_LOGIC_VECTOR (31 downto 0);
           NorIn : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end ALUOp_Multiplexer;

architecture Behavioral of ALUOp_Multiplexer is

begin

	Output <= AndIn when Selector = "0000" else
				 OrIn  when Selector = "0001" else
				 AddIn when Selector = "0010" else
				 SubIn when Selector = "0110" else
				 NorIn when Selector = "1100" else
				 (others => 'Z');

end Behavioral;

