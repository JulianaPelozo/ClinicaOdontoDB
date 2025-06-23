-- teste procedure 1
CALL sp_InserirEnderecoSimplificado(502, 'Av. Boa Viagem', '1000', 'Boa Viagem', 'Recife', 'PE', '51020000', 'Apto 301');

-- teste procedure 2
CALL sp_ContarDespesasAcimaMil ();

-- teste procedure 3
CALL sp_SomaFaturamento();

-- teste procedure 4
CALL sp_ListarLabs();

-- teste procedure 5
CALL sp_PacientesMasculinos();

-- teste procedure 6
CALL sp_InserirDentista(809, 'Dr. Vinícius Prado', 'vinicius.prado@clinicadental.com', '(81) 91234-5678', 'Clínica Geral', 'PE-99887');


