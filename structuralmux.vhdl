entity mux is
port(d: in std_logic_vector(0 to 3); a,b:in std_logic; y:out std_logic);
end mux;

architecture MUX_STR of mux is

component not_gate
port(m: in std_logic; n:out std_logic);
end component;

component and_gate
port(p,q,r: in std_logic; k:out std_logic);
end component;

component or_gate
port(e,f,g,h: in std_logic; i:out std_logic);
end component;

signal s1,s2,s3,s4,s5,s6: std_logic;

begin
L1:not_gate port map(a,s1);
L2:not_gate port map(b,s2);
L3:and_gate port map(s1,s2,d(0),s3);
L4:and_gate port map(s1,b,d(1));
L5:and_gate port map(a,s2,d(2));
L6:and_gate port map(a,b,d(3));
L7: or_gate port map(s3,s4,s5,s6,y);
end MUX_STR;