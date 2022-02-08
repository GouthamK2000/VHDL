enitiy decoder is
port(a,b:in std_logic ; y:out std_logic_vector(0 to 3));
end decoder;

architecture DEC_DF of decoder is

signal s1,s2 :std_logic;

begin
s1<= not a;
s2 <= not b;
y(0)<= s1 and s2;
y(1)<= s1 and b;
y(2)<= a and s2
y(3)<= a and b;
end DEC_DF;

