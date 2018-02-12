library verilog;
use verilog.vl_types.all;
entity fa8b is
    port(
        sum             : out    vl_logic_vector(15 downto 0);
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0)
    );
end fa8b;
