USE clinicaodonto;

DELIMITER //
CREATE TRIGGER trg_validar_data_agendamento
BEFORE INSERT ON Agendamento
FOR EACH ROW
BEGIN
  IF NEW.dataHora < NOW() THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'A data do agendamento não pode estar no passado.';
  END IF;
END;
//
DELIMITER ;

CREATE TABLE IF NOT EXISTS LogPagamento (
  idLog INT AUTO_INCREMENT PRIMARY KEY,
  idFaturamento INT,
  dataAtualizacao DATETIME,
  novoStatus VARCHAR(50)
);

DELIMITER //
CREATE TRIGGER trg_log_pagamento
AFTER UPDATE ON Faturamento
FOR EACH ROW
BEGIN
  IF NEW.statusPag = 'Pago' AND OLD.statusPag <> 'Pago' THEN
    INSERT INTO LogPagamento (idFaturamento, dataAtualizacao, novoStatus)
    VALUES (NEW.idFaturamento, NOW(), NEW.statusPag);
  END IF;
END;
//
DELIMITER ;

CREATE TABLE IF NOT EXISTS FuncionarioDesligado (
  idDesligamento INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  dataDesligamento DATETIME
);

DELIMITER //
CREATE TRIGGER trg_registrar_funcionario_excluido
BEFORE DELETE ON Funcionario
FOR EACH ROW
BEGIN
  INSERT INTO FuncionarioDesligado (nome, dataDesligamento)
  VALUES (OLD.nome, NOW());
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER trg_prevenir_valor_negativo_procedimento
BEFORE UPDATE ON procedimentoOdont
FOR EACH ROW
BEGIN
  IF NEW.valor <= 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'O valor do procedimento deve ser maior que zero.';
  END IF;
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER trg_verificar_paciente_existente
BEFORE INSERT ON Paciente
FOR EACH ROW
BEGIN
  DECLARE existe INT;
  SELECT COUNT(*) INTO existe FROM Paciente WHERE CPF = NEW.CPF;

  IF existe > 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Já existe um paciente cadastrado com este CPF.';
  END IF;
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER trg_padrao_complemento_endereco
BEFORE INSERT ON Endereco
FOR EACH ROW
BEGIN
  IF NEW.complemento IS NULL OR NEW.complemento = '' THEN
    SET NEW.complemento = 'Sem complemento';
  END IF;
END;
//
DELIMITER ;

SELECT 
  TRIGGER_NAME,
  EVENT_MANIPULATION AS Evento,
  EVENT_OBJECT_TABLE AS Tabela,
  ACTION_TIMING AS Momento,
  ACTION_STATEMENT AS Acao,
  CREATED AS DataCriacao,
  DEFINER AS CriadoPor,
  SQL_MODE,
  CHARACTER_SET_CLIENT,
  COLLATION_CONNECTION,
  DATABASE_COLLATION
FROM INFORMATION_SCHEMA.TRIGGERS
WHERE TRIGGER_SCHEMA = 'clinicaodonto';


