entity full_adder is 
port (a, b, cin: in std_logic; sum,carry: out std_logic); 
end full_adder; 

architecture FA_BEH of full_adder is
begin
process(a,b,cin)
variable  s1,s2,s3 : std_logic;
begin
s1 := a xor b;
s2 := a and b;
s3 := s1 and cin;
sum <= s1 xor cin;
carry <= s3 or s2;
end process;
end  FA_BEH;
