library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display_test is
    port (
        i_switches      : in    std_ulogic_vector(7 downto 0);
        o_display_1     : out   std_ulogic_vector(6 downto 0);
        o_display_2     : out   std_ulogic_vector(6 downto 0)
    );
end display_test;

architecture rtl of display_test is
    
    type DISPLAY is array (15 downto 0) of std_ulogic_vector(6 downto 0);

    -- 7 segment display outputs
    constant c_DISPLAY_OUTPUTS  :   DISPLAY := ("0001110",
                                                "0000110",
                                                "0100001",
                                                "1000110",
                                                "0000011",
                                                "0001000",
                                                "0010000",
                                                "0000000",
                                                "1111000",
                                                "0000010",
                                                "0010010",
                                                "0011001",
                                                "0110000",
                                                "0100100",
                                                "1111001",
                                                "1000000");

begin

    -- Convert lower 4 bits of switches to o_display_1
    o_display_1 <= c_DISPLAY_OUTPUTS( to_integer(unsigned(i_switches(3 downto 0))) );
    -- Convert upper 4 bits of switches to o_display_2
    o_display_2 <= c_DISPLAY_OUTPUTS( to_integer(unsigned(i_switches(7 downto 4))) );

end rtl;