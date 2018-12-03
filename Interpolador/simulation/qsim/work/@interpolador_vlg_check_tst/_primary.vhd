library verilog;
use verilog.vl_types.all;
entity Interpolador_vlg_check_tst is
    port(
        amostraOUT      : in     vl_logic_vector(7 downto 0);
        amostraOUT2     : in     vl_logic_vector(7 downto 0);
        endereco        : in     vl_logic_vector(9 downto 0);
        inicioImagem    : in     vl_logic;
        trocaLinha      : in     vl_logic;
        valido          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Interpolador_vlg_check_tst;
