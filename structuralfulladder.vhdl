           
entity full_adder is 
port (a, b, cin: in std_logic; sum,carry: out std_logic); 
end full_adder; 


architecture FA_STR of full_adder is

component  xor_gate
port(x,y : in std_logic; z : out std_logic);
end component;

component  and_gate
port(p,q : in std_logic; r : out std_logic);
end component;

component  or_gate
port(m,n : in std_logic; o : out std_logic);
end component;

signal  s1,s2,s3 : std_logic;

begin
L1 : xor_gate port map (a,b,s1);
L2 : xor_gate port map (s1,cin,sum);
L3 : and_gate port map (a,b,s2);
L4 : and_gate port map (s1,cin,s3);
L5 : or_gate port map (s3,s2,carry);
end  FA_STR;
