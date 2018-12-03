library verilog;
use verilog.vl_types.all;
entity Interpolador is
    port(
        clock           : in     vl_logic;
        inicio          : in     vl_logic;
        amostraIN0      : in     vl_logic_vector(7 downto 0);
        amostraIN1      : in     vl_logic_vector(7 downto 0);
        amostraIN2      : in     vl_logic_vector(7 downto 0);
        amostraIN3      : in     vl_logic_vector(7 downto 0);
        amostraIN4      : in     vl_logic_vector(7 downto 0);
        amostraIN5      : in     vl_logic_vector(7 downto 0);
        amostraOUT      : out    vl_logic_vector(7 downto 0);
        amostraOUT2     : out    vl_logic_vector(7 downto 0);
        endereco        : out    vl_logic_vector(9 downto 0);
        trocaLinha      : out    vl_logic;
        inicioImagem    : out    vl_logic;
        valido          : out    vl_logic
    );
end Interpolador;
