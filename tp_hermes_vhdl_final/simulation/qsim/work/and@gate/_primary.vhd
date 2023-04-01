library verilog;
use verilog.vl_types.all;
entity andGate is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Y               : out    vl_logic
    );
end andGate;
