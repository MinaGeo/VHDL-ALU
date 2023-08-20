library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.pkg_MajorTask_Phase1_Part2.all;

entity ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

signal data2_mod : std_logic_vector (31 downto 0);
signal sum : std_logic_vector (31 downto 0);
signal dataout_temp : std_logic_vector (31 downto 0);
signal sub_condition : std_logic;
signal carry_condition : std_logic;
signal carry_check : std_logic; -- checks for the carry before the last one (cflag)
signal cflag_temp : std_logic;

begin
	sub_condition <= '1' when aluop = "0110" else '0';
	carry_condition <= '1' when aluop = "0110" else cin;
		
		
	carry_check <= '0' when ( data1(31) = '0' and data2_mod(31) = '0' and dataout_temp(31) = '0' ) else
						'1' when ( data1(31) = '0' and data2_mod(31) = '0' and dataout_temp(31) = '1' ) else
						'1' when ( data1(31) = '0' and data2_mod(31) = '1' and dataout_temp(31) = '0' ) else
						'0' when ( data1(31) = '0' and data2_mod(31) = '1' and dataout_temp(31) = '1' ) else
						'1' when ( data1(31) = '1' and data2_mod(31) = '0' and dataout_temp(31) = '0' ) else
						'0' when ( data1(31) = '1' and data2_mod(31) = '0' and dataout_temp(31) = '1' ) else
						'0' when ( data1(31) = '1' and data2_mod(31) = '1' and dataout_temp(31) = '0' ) else
						'1' when ( data1(31) = '1' and data2_mod(31) = '1' and dataout_temp(31) = '1' ) else
						'Z';
	

	sub_mux : Subtract_Multiplexer port map ( sub_condition , data2, not data2, data2_mod) ;
	
	alu_adder : FullAdder port map (data1, data2_mod, carry_condition, sum, cflag_temp) ;
	
	aluop_mux : ALUOp_Multiplexer port map (aluop, (data1 and data2_mod), (data1 or data2_mod), sum, sum, (data1 nor data2_mod), dataout_temp) ;
	
	zflag <= not (
		dataout_temp(0) or
		dataout_temp(1) or
		dataout_temp(2) or
		dataout_temp(3) or
		dataout_temp(4) or
		dataout_temp(5) or
		dataout_temp(6) or
		dataout_temp(7) or
		dataout_temp(8) or
		dataout_temp(9) or
		dataout_temp(10) or
		dataout_temp(11) or
		dataout_temp(12) or
		dataout_temp(13) or
		dataout_temp(14) or
		dataout_temp(15) or
		dataout_temp(16) or
		dataout_temp(17) or
		dataout_temp(18) or
		dataout_temp(19) or
		dataout_temp(20) or
		dataout_temp(21) or
		dataout_temp(22) or
		dataout_temp(23) or
		dataout_temp(24) or
		dataout_temp(25) or
		dataout_temp(26) or
		dataout_temp(27) or
		dataout_temp(28) or
		dataout_temp(29) or
		dataout_temp(30) or
		dataout_temp(31));
		
		
		oflag <= cflag_temp xor carry_check ;
	
	cflag <= cflag_temp;
	dataout <= dataout_temp;
	
end Behavioral;

