library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder is
    port (
        i_a     : in  std_ulogic;
        i_b     : in  std_ulogic;
        i_cin   : in  std_ulogic;
        o_sum   : out std_ulogic;
        o_cout  : out std_ulogic
    );
end full_adder;

architecture rtl of full_adder is

begin

    o_sum <= i_a xor i_b xor i_cin;
    o_cout <= (i_a and i_b) or (i_cin and (i_a xor i_b));

end rtl;