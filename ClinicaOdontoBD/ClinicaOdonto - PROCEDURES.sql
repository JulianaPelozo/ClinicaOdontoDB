-- Procedure 1
DELIMITER $$
CREATE PROCEDURE sp_InserirEnderecoSimplificado(
    IN p_idEndereco INT,
    IN p_rua VARCHAR(100),
    IN p_numero VARCHAR(10),
    IN p_bairro VARCHAR(50),
    IN p_cidade VARCHAR(50),
    IN p_UF CHAR(2),
    IN p_CEP VARCHAR(10),
    IN p_complemento VARCHAR(100)
)
BEGIN
    INSERT INTO Endereco (idEndereco, rua, numero, bairro, cidade, UF, CEP, complemento)
    VALUES (p_idEndereco, p_rua, p_numero, p_bairro, p_cidade, p_UF, p_CEP, p_complemento);

    -- Adicione esta linha para retornar a tabela
    SELECT *
    FROM Endereco
    WHERE idEndereco = p_idEndereco;
END $$
DELIMITER ;

-- Procedure 2 
DELIMITER $$

CREATE PROCEDURE sp_ContarDespesasAcimaMil ()
BEGIN
  SELECT COUNT(*) AS total_acima_1000 FROM despesa WHERE valor > 1000;
END $$

DELIMITER ;

-- Procedure 3 
DELIMITER $$

CREATE PROCEDURE sp_SomaFaturamento ()
BEGIN
  SELECT SUM(valorTotal) AS soma_total FROM faturamento;
END $$

DELIMITER ;

-- Procedure 4 
DELIMITER $$

CREATE PROCEDURE sp_ListarLabs ()
BEGIN
  SELECT nome FROM labexterno WHERE idLaboratorio >= 2;
END $$

DELIMITER ;

-- Procedure 5 
DELIMITER $$

CREATE PROCEDURE sp_PacientesMasculinos ()
BEGIN
  SELECT nome, CPF, dataNasc, historico, genero
  FROM paciente
  WHERE genero = 'Masculino';
END $$

DELIMITER ;

-- Procedure 6 
DELIMITER $$
CREATE PROCEDURE sp_InserirDentista(
    IN p_idDentista INT,
    IN p_nome VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_telefone VARCHAR(20),
    IN p_especialidade VARCHAR(100),
    IN p_CFO VARCHAR(20)
)
BEGIN
    INSERT INTO Dentista (idDentista, nome, email, telefone, especialidade, CFO)
    VALUES (p_idDentista, p_nome, p_email, p_telefone, p_especialidade, p_CFO);

    -- Adicione esta linha para retornar a tabela
    SELECT *
    FROM Dentista
    WHERE idDentista = p_idDentista;
END $$
DELIMITER ;


