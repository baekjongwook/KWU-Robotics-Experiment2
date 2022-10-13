library ieee;
use ieee.std_logic_1164.all;

entity segment is
	port(inputParameter : in integer range 0 to 15;
			seg : out std_logic_vector(6 downto 0));
end segment;

architecture Data of segment is
begin
	process(inputParameter)
	begin
		case inputParameter is
		when 0 => seg <= "1000000";
		when 1 => seg <= "1111001";
		when 2 => seg <= "0100100";
		when 3 => seg <= "0110000";
		when 4 => seg <= "0011001";
		when 5 => seg <= "0010010";
		when 6 => seg <= "0000010";
		when 7 => seg <= "1011000";
		when 8 => seg <= "0000000";
		when 9 => seg <= "0011000";
		when 10 => seg <= "0001000";
		when 11 => seg <= "0000011";
		when 12 => seg <= "1000110";
		when 13 => seg <= "0100001";
		when 14 => seg <= "0000110";
		when 15 => seg <= "0001110";
		when others => seg <= "1111111";
	end case;
	end process;
end Data;