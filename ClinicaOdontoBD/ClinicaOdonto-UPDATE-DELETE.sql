USE clinicaodonto;

-- Atualizar o telefone de um dentista
SELECT * FROM dentista
	WHERE idDentista = 220;

UPDATE `clinicaodonto`.`dentista`
SET `telefone` = '(11) 99876-8975'
WHERE `idDentista` = 220;

-- Atualizar nome de paciente
    
UPDATE Paciente SET nome = 'Joana Costa' WHERE idPaciente = 1;

-- Atualizar status de pagamento
UPDATE Faturamento SET statusPag = 'Pago' WHERE idFaturamento = 102;

-- Atualizar valor de procedimento
UPDATE procedimentoOdont SET valor = 1300.00 WHERE idProcedimento = 407;

-- Verificação
SELECT * FROM procedimentoodont
	WHERE idProcedimento = 407;

-- Alterar cargo de funcionário
UPDATE Funcionario SET cargo = "Assistente Administrativo" WHERE idFuncionario = 201;

-- Verificação
SELECT * FROM funcionario 
	WHERE cargo = "Recepcionista";

SELECT * FROM funcionario
	WHERE cargo = "Assistente Administrativo";

-- Alterar plano de saúde
UPDATE SeguroSaude SET planoSaude = 'Premium Plus' WHERE idSeguro = 225;

-- Alterar email de um paciente 
UPDATE Paciente SET email = 'carla.mendes@gmail.com' WHERE idPaciente = 3;

-- Deletar um registro de agendamento
DELETE FROM registroclin WHERE idAgendamento = 123;
DELETE FROM agendamento WHERE idAgendamento = 123;

-- Deletar um funcionário específico
DELETE FROM Funcionario WHERE nome = 'Lucas Ferreira';

-- Atualizar cargo de um funcionário
UPDATE Funcionario SET cargo = 'Recepcionista' WHERE idFuncionario = 205;

-- Atualizar email de laboratório
UPDATE labExterno SET email = 'novoemail@lab.com' WHERE idLaboratorio = 2;

-- Atualizar complemento do endereço
UPDATE Endereco SET complemento = 'Bloco B' WHERE idEndereco = 1;

-- Alterar especialidade do dentista
UPDATE Dentista SET especialidade = 'Ortodontia' WHERE idDentista = 205;

-- Reajustar salário
UPDATE Funcionario SET salario = salario * 1.1 WHERE cargo = 'Porteiro';

--  valor de uma despesa
UPDATE Despesa SET valor = 500.00 WHERE idDespesa = 105;

-- Deletar receitas antigas
DELETE FROM Receita WHERE dataEmissao < '2024-01-01';

-- Deletar registros clínicos sem diagnóstico
DELETE FROM RegistroClin WHERE diagnostico IS NULL;

-- Atualizar status de agendamento
UPDATE Agendamento SET dataHora = NOW() WHERE idAgendamento = 789;

-- Atualizar cobertura de plano de saúde
UPDATE SeguroSaude SET cobertura = 'Total' WHERE idSeguro = 1;

-- Deletar dentistas com CRM nulo
DELETE FROM Dentista WHERE CFO IS NULL;

-- Deletar um número de telefone de um paciente, deixando o campo vazio
UPDATE Paciente
	SET telefone = NULL
		WHERE idPaciente = 1;

