library verilog;
use verilog.vl_types.all;
entity Cofre_vhdl is
    port(
        L1              : in     vl_logic_vector(4 downto 0);
        L2              : in     vl_logic_vector(4 downto 0);
        L3              : in     vl_logic_vector(4 downto 0);
        C_L1            : in     vl_logic_vector(4 downto 0);
        C_L2            : in     vl_logic_vector(4 downto 0);
        C_L3            : in     vl_logic_vector(4 downto 0);
        D1              : in     vl_logic_vector(3 downto 0);
        D2              : in     vl_logic_vector(3 downto 0);
        D3              : in     vl_logic_vector(3 downto 0);
        C_D1            : in     vl_logic_vector(3 downto 0);
        C_D2            : in     vl_logic_vector(3 downto 0);
        C_D3            : in     vl_logic_vector(3 downto 0);
        Xa              : out    vl_logic;
        Xb              : out    vl_logic;
        Xc              : out    vl_logic;
        Led_Vermelho    : out    vl_logic;
        Led_Amarelo     : out    vl_logic;
        Led_Verde       : out    vl_logic;
        Cofre           : out    vl_logic
    );
end Cofre_vhdl;
