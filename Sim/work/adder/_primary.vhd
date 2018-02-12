library verilog;
use verilog.vl_types.all;
entity adder is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        c               : out    vl_logic;
        s               : out    vl_logic_vector(7 downto 0)
    );
end adder;
