library IEEE;
use IEEE.STD_LOGIC_1164.all;

package pkg_MajorTask_Phase1_Part2 is

	component FullAdder is
    Port ( Num1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Num2 : in  STD_LOGIC_VECTOR (31 downto 0);
           CarryIN : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (31 downto 0);
           CarryOUT : out  STD_LOGIC);
	end component;
	
	component ALUOp_Multiplexer is
    Port ( Selector : in  STD_LOGIC_VECTOR (3 downto 0);
           AndIn : in  STD_LOGIC_VECTOR (31 downto 0);
           OrIn : in  STD_LOGIC_VECTOR (31 downto 0);
           AddIn : in  STD_LOGIC_VECTOR (31 downto 0);
           SubIn : in  STD_LOGIC_VECTOR (31 downto 0);
           NorIn : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));		  
	end component;

	component Subtract_Multiplexer is
    Port ( Selector : in  STD_LOGIC;
           In0 : in  STD_LOGIC_VECTOR (31 downto 0);
           In1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;	

end pkg_MajorTask_Phase1_Part2;

package body pkg_MajorTask_Phase1_Part2 is
end pkg_MajorTask_Phase1_Part2;
