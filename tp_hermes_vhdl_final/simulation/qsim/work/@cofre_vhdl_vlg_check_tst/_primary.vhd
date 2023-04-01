library verilog;
use verilog.vl_types.all;
entity Cofre_vhdl_vlg_check_tst is
    port(
        Cofre           : in     vl_logic;
        Led_Amarelo     : in     vl_logic;
        Led_Verde       : in     vl_logic;
        Led_Vermelho    : in     vl_logic;
        Xa              : in     vl_logic;
        Xb              : in     vl_logic;
        Xc              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Cofre_vhdl_vlg_check_tst;
