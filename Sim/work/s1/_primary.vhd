library verilog;
use verilog.vl_types.all;
entity s1 is
    port(
        rst             : in     vl_logic;
        d               : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0);
        l               : in     vl_logic
    );
end s1;
