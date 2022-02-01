Half adder-Structural model

entity half_adder is
port(a,b : in std_logic; sum,carry: out std_logic);
end half_adder;

architecture HA_STR of half_adder is

component xor_gate
port(x,y: in std_logic ; z: out std_logic);
end component;

component and_gate
port(p,q: in std_logic; r:out std_logic);
end component;

begin
L1: xor_gate port map(a,b,sum);
L2: and_gate port map(a,b,carry);
end HA_STR;

