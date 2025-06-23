-- Inserção com data no futuro
INSERT INTO Agendamento (idAgendamento, dataHora, idPaciente, idDentista, idFuncionario)
VALUES (9906, NOW() + INTERVAL 2 DAY, 3, 210, 202);

-- Verifica status atual
SELECT * FROM Faturamento WHERE idFaturamento = 104;

-- Atualiza de 'Pago' para outro e volta para 'Pago' para acionar a trigger
UPDATE Faturamento SET statusPag = 'Em Aberto' WHERE idFaturamento = 104;
UPDATE Faturamento SET statusPag = 'Pago' WHERE idFaturamento = 104;

-- Verifica log
SELECT * FROM LogPagamento WHERE idFaturamento = 104;

-- Criar novo funcionário só para o teste
INSERT INTO Funcionario (
  idFuncionario, nome, CPF, dataNasc, genero, telefone, email, cargo, salario, status,
  rua, numero, bairro, cidade, UF, CEP, complemento
) VALUES (
  1000, 'Teste Func 2', '888.888.888-88', '1992-02-02', 'Feminino', '(81) 98888-8888',
  'teste2@func.com', 'Secretária', 2000.00, 'Ativo',
  'Av. Exemplo', '100', 'Boa Vista', 'Recife', 'PE', '50010-000', 'Sala 100'
);


-- Agora deletando (a trigger será acionada)
DELETE FROM Funcionario WHERE idFuncionario = 1000;

-- Verificação
SELECT * FROM FuncionarioDesligado;

-- Atualiza valor corretamente (válido e positivo)
UPDATE procedimentoOdont SET valor = valor + 50.00 WHERE idProcedimento = 403;

-- Inserção de novo paciente com CPF inédito
INSERT INTO Paciente (
  idPaciente, nome, CPF, dataNasc, genero, telefone, email, historico,
  rua, numero, bairro, cidade, UF, CEP, complemento
) VALUES (
  1001, 'Paciente Novo', '999.888.777-60', '1996-06-06', 'Feminino',
  '(81) 98888-7778', 'novo1@paciente.com', 'Consulta preventiva.',
  'Rua Nova', '29', 'Boa Vista', 'Recife', 'PE', '52000-100', ''
);

-- Inserção sem informar o complemento (será preenchido com 'Sem complemento')
INSERT INTO Endereco (
  idEndereco, rua, numero, bairro, cidade, UF, CEP, complemento
) VALUES (
  889, 'Av. das Palmeiras', '120', 'Boa Viagem', 'Recife', 'PE', '51000-001', 'Bloco B - Apto 304'
);

-- Verifica preenchimento
SELECT complemento FROM Endereco WHERE idEndereco = 889;


