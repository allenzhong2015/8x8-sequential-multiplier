library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        reset           : in     vl_logic;
        l               : out    vl_logic;
        clk             : in     vl_logic
    );
end counter;
