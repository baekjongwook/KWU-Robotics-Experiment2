library ieee;
use ieee.std_logic_1164.all;

entity FSM is
	port( Clk    : in std_logic;
			Input  : in std_logic;
			Reset  : in std_logic;
			
			Light1 : out std_logic;
			Light2 : out std_logic;
			Light3 : out std_logic;
			Light4 : out std_logic;
			
         seg0   : out std_logic_vector(6 downto 0);
         seg1   : out std_logic_vector(6 downto 0);
         seg2   : out std_logic_vector(6 downto 0);
			seg3   : out std_logic_vector(6 downto 0) 
		 );
end FSM;

architecture design of FSM is
	type state_type is(s0, s1, s2);
	signal state : state_type := s0;

begin
	process(Clk, Reset)
		variable cnt : integer range 0 to 50000000 := 0;
		variable second : integer range 0 to 4 := 0;
		
	begin
		if (Reset = '1') then
			state <= s0;
			cnt := 0;
			second := 0;
		
		elsif (rising_edge(clk)) then
			cnt := cnt + 1;
	
			if (cnt = 49999999) then
			cnt := 0;
			second := second + 1;
	 
				if (second = 4) then
					case state is
					when s0 => state <= s1;
					when s1 =>
						if (input = '1') then
							state <= s2;
						elsif (input = '0') then
							state <= s0;
						end if;
					when s2 => state <= s1;
					end case;
					
					second := 0;
					
				end if;		
			end if;		
		end if;
	end process;

	process (state)
	begin
		case state is
		when s0=>
			seg0   <="0001100";
			seg1   <="0100011";
			seg2   <="0000111";
			seg3   <="0010010";
			Light1 <= '1';
			Light2 <= '0';
			Light3 <= '1';
			Light4 <= '0';	
		when s1=>
			seg0   <="0001100";
			seg1   <="0100011";
			seg2   <="0000111";
			seg3   <="0010010";
			Light1 <= '0';
			Light2 <= '1';
			Light3 <= '0';
			Light4 <= '1';	
		when s2=>
			seg0   <="0100011";
			seg1   <="0010000";
			seg2   <="1111111";
			seg3   <="1111111";
			Light1 <= '1';
			Light2 <= '0';
			Light3 <= '1';
			Light4 <= '0';	
		end case;
	end process;
end design;