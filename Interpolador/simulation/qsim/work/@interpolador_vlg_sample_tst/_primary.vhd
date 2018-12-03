library verilog;
use verilog.vl_types.all;
entity Interpolador_vlg_sample_tst is
    port(
        amostraIN0      : in     vl_logic_vector(7 downto 0);
        amostraIN1      : in     vl_logic_vector(7 downto 0);
        amostraIN2      : in     vl_logic_vector(7 downto 0);
        amostraIN3      : in     vl_logic_vector(7 downto 0);
        amostraIN4      : in     vl_logic_vector(7 downto 0);
        amostraIN5      : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        inicio          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Interpolador_vlg_sample_tst;
