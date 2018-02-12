library verilog;
use verilog.vl_types.all;
entity l4q3 is
    port(
        op              : out    vl_logic_vector(15 downto 0);
        ip1             : in     vl_logic_vector(7 downto 0);
        ip2             : in     vl_logic_vector(7 downto 0);
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        load            : in     vl_logic;
        en              : in     vl_logic
    );
end l4q3;
