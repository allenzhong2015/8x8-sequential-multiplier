library verilog;
use verilog.vl_types.all;
entity pipo is
    port(
        op              : out    vl_logic_vector(7 downto 0);
        ip              : in     vl_logic_vector(7 downto 0);
        rst             : in     vl_logic;
        clk             : in     vl_logic
    );
end pipo;
