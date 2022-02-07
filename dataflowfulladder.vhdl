           
entity full_adder is 
port (a, b, cin: in std_logic; sum,carry: out std_logic); 
end full_adder; 

architecture FA_DF of full_adder is
signal  s1,s2,s3 : std_logic;
begin
s1 <= a xor b;
sum <= s1 xor cin;
s2<= a and b;
s3<= s1 and cin;
carry <= s3 or s2;
end  FA_DF;

#without signal

architecture FA_DF of full_adder is
begin
sum <= (a xor b) xor  cin;
carry <= ((a xor b) and  cin) or (a and b);
end  FA_DF;
