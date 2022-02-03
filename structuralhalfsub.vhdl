entity half_sub is
port(a,b ;in std_logic ; diff,borr: out std_logic);
end half_sub;

architecture HS_STR of half_sub is

component xor_gate
port(x,y: in std_logic; z: out std_logic);
end component;

component not_gate
port(i: in std_logic; k:out std_logic);
end component;

component and_gate
port(p,q :in std_logic; y:out std_logic);
end component;

signal s1:std_logic;

begin
L1:xor_gate port map(a,b,diff);
L2: not_gate port map(a,S1);
L3:and_gate port map(s1,b,borr);
end HS_STR;