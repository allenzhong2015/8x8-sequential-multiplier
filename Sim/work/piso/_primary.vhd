library verilog;
use verilog.vl_types.all;
entity piso is
    port(
        op              : out    vl_logic;
        ip              : in     vl_logic_vector(7 downto 0);
        rst             : in     vl_logic;
        load            : in     vl_logic;
        clk             : in     vl_logic
    );
end piso;
