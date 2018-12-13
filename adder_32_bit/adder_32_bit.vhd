library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_32_bit is
    port (
        i_a         : in    std_ulogic_vector(31 downto 0);
        i_b         : in    std_ulogic_vector(31 downto 0);
        i_cin       : in    std_ulogic;
        o_sum       : in    std_ulogic_vector(31 downto 0);
        o_cout      : in    std_ulogic
    );
end adder_32_bit;

architecture rtl of adder_32_bit is
begin
end rtl;