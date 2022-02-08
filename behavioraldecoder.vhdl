entity decoder is
port(a,b: in std_logic; y:out std_logic vector(0 to 3));
end decoder;

architecture DEC_BEH of decoder is

begin
proces(a,b);
variable s1,s2: std_logic;

begin
s1:=not a;
s2:= not b;
d(0) <= s1 and s2;
d(1) <= s1 and b;
d(2) <= a and s2;
d(3) <= a and b;
end process;
end DEC_BEH;
