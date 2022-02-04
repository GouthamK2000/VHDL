entity decoder is
port(a,b :in std_logic ; y:out std_logic_vector(0 to 3));
end decoder;

architecture DEC_STR of decoder is

component not_gate
port(m: in std_logic; n: out std_logic);
end component;

component and_gate
port(p,q: in std_logic; r:out std_logic);
end component;

signal s1,s2:std_logic;

begin
L1:not_gate port map(a,s1);
L2:not_gate port map(b,s2);
L3:and_gate port map(s1,s2,y(0));
L4:and_gate port map(s1,b,y(1));
L5:and_gate port map(a,s2,y(2));
L6:and_gate port map(a,b,y(3));
end DEC_STR;