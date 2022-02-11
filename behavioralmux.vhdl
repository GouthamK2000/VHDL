entity multiplexer  is
port ( d: in  std_logic_vector(0 to 3); a,b: in std_logic; y: out  std_logic);
end multiplexer;

architecture MUX_BEH of multiplexer is
begin
process (a,b,d)
variable s1,s2,s3,s4,s5,s6 : std_logic;
begin
s1 := not a;
s2 := not b;
s3 := s1 and s2 and d(0);
 s4 := s1 and b and d(1);
s5 := a and s2 and d(2);
s6 := a and b and d(3);
y <= s3 or s4 or s5 or s6;
end process;
end  MUX_BEH;
