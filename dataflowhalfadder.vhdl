entitiy half_add is
port(a,b: in std_logic; sum,carry:out std_logic);
end half_add;

architecture HA_DF of half_add is

begin
sum<= a xor b;
carry<= a and b;
end HA_DF;