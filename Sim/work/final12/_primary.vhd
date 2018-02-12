library verilog;
use verilog.vl_types.all;
entity final12 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        op              : out    vl_logic_vector(15 downto 0);
        load            : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        valid           : out    vl_logic
    );
end final12;
