library verilog;
use verilog.vl_types.all;
entity s2 is
    port(
        rst             : in     vl_logic;
        l_s             : in     vl_logic;
        clk             : in     vl_logic;
        q1              : out    vl_logic_vector(7 downto 0);
        d               : in     vl_logic_vector(7 downto 0)
    );
end s2;
