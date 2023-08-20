library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Subtract_Multiplexer is

    Port ( Selector : in  STD_LOGIC;
           In0 : in  STD_LOGIC_VECTOR (31 downto 0);
           In1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end Subtract_Multiplexer;

architecture Behavioral of Subtract_Multiplexer is

begin

	Output <= In0 when Selector = '0' else
				 In1 when Selector = '1' else
				 (others => 'Z');

end Behavioral;

