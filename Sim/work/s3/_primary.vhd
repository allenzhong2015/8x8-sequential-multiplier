library verilog;
use verilog.vl_types.all;
entity s3 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        d               : in     vl_logic_vector(7 downto 0);
        l               : in     vl_logic;
        q2              : out    vl_logic_vector(7 downto 0)
    );
end s3;
