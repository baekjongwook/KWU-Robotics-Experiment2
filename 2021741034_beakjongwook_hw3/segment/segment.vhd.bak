library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
	port(input_A, input_B, input_Cin : in std_logic;
			output_S, output_Cout : out std_logic);
end fulladder;

architecture design of fulladder is
begin
	output_S <= (input_A xor input_B) xor input_Cin;
	output_Cout <= (input_A and input_B) or ((input_A xor input_B) and input_Cin);
end design;