library verilog;
use verilog.vl_types.all;
entity Cofre_vhdl_vlg_sample_tst is
    port(
        C_D1            : in     vl_logic_vector(3 downto 0);
        C_D2            : in     vl_logic_vector(3 downto 0);
        C_D3            : in     vl_logic_vector(3 downto 0);
        C_L1            : in     vl_logic_vector(4 downto 0);
        C_L2            : in     vl_logic_vector(4 downto 0);
        C_L3            : in     vl_logic_vector(4 downto 0);
        D1              : in     vl_logic_vector(3 downto 0);
        D2              : in     vl_logic_vector(3 downto 0);
        D3              : in     vl_logic_vector(3 downto 0);
        L1              : in     vl_logic_vector(4 downto 0);
        L2              : in     vl_logic_vector(4 downto 0);
        L3              : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end Cofre_vhdl_vlg_sample_tst;
