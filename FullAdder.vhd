library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FullAdder is
    Port ( Num1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Num2 : in  STD_LOGIC_VECTOR (31 downto 0);
           CarryIN : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (31 downto 0);
           CarryOUT : out  STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is

signal temp : std_logic_vector (32 downto 0);
signal CarryINVector : std_logic_vector (31 downto 0);

	begin

		CarryINVector <= "00000000000000000000000000000001" when CarryIN = '1' else 
						(others => '0') when CarryIN = '0' else 
						(others => 'Z');

		temp <= std_logic_vector (signed ('0' & Num1) + signed ('0' & Num2) + signed (CarryINVector));
		Sum <= temp (31 downto 0);
		CarryOUT <= temp (32);

	end Behavioral;
