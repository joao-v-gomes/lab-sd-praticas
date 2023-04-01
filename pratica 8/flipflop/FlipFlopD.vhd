
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FlipFlopD is

Port ( d,clk : in  STD_LOGIC;

q,qb : inout STD_LOGIC);

end FlipFlopD;

architecture dataflow of FlipFlopD is

signal d1,s1,r1:STD_LOGIC;

begin

s1 <= d nand clk;

d1 <= d nand d;

r1 <= d1 nand clk;

q <= s1 nand qb;

qb <= r1 nand q;

end dataflow