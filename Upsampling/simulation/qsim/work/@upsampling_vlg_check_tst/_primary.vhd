library verilog;
use verilog.vl_types.all;
entity Upsampling_vlg_check_tst is
    port(
        newLine         : in     vl_logic;
        sampleOut1      : in     vl_logic_vector(7 downto 0);
        sampleOut2      : in     vl_logic_vector(7 downto 0);
        valido          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Upsampling_vlg_check_tst;
