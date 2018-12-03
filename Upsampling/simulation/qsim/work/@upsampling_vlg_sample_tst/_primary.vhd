library verilog;
use verilog.vl_types.all;
entity Upsampling_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        sampleIn        : in     vl_logic_vector(7 downto 0);
        start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Upsampling_vlg_sample_tst;
