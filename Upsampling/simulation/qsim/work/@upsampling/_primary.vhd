library verilog;
use verilog.vl_types.all;
entity Upsampling is
    port(
        sampleIn        : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        start           : in     vl_logic;
        reset           : in     vl_logic;
        newLine         : out    vl_logic;
        valido          : out    vl_logic;
        sampleOut1      : out    vl_logic_vector(7 downto 0);
        sampleOut2      : out    vl_logic_vector(7 downto 0)
    );
end Upsampling;
