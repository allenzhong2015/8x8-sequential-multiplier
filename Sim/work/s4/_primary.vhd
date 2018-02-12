library verilog;
use verilog.vl_types.all;
entity s4 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        d               : in     vl_logic;
        l               : in     vl_logic;
        q3              : out    vl_logic_vector(7 downto 0)
    );
end s4;
