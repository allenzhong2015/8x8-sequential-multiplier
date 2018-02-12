library verilog;
use verilog.vl_types.all;
entity rsr is
    port(
        op              : out    vl_logic_vector(15 downto 0);
        ip              : in     vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        load            : in     vl_logic
    );
end rsr;
