USE clinicaodonto;

CREATE VIEW vw_FuncionariosAtivos AS
SELECT idFuncionario, nome, cargo, salario
FROM Funcionario
WHERE status = 'Ativo';

CREATE VIEW view_dentistas_especialidade AS
SELECT especialidade, COUNT(*) AS qtd FROM Dentista GROUP BY especialidade;

CREATE VIEW view_agendamentos_futuros AS
SELECT * FROM Agendamento WHERE dataHora > NOW();

CREATE VIEW view_faturamento_total AS
SELECT idPaciente, SUM(valorTotal) AS total FROM Faturamento GROUP BY idPaciente;

CREATE VIEW view_despesas_por_categoria AS
SELECT categoria, SUM(valor) AS total FROM Despesa GROUP BY categoria;

CREATE VIEW vw_ProcedimentosCaros AS
	SELECT * FROM procedimentoOdont
	WHERE valor > 200.00;

CREATE VIEW view_registros_por_dentista AS
SELECT idDentista, COUNT(*) AS total FROM RegistroClin GROUP BY idDentista;

CREATE VIEW view_lab_endereco AS
SELECT L.nome, E.rua, E.bairro FROM labExterno L
JOIN Endereco E ON L.idEndereco = E.idEndereco;

CREATE VIEW view_consultas_por_paciente AS
SELECT idPaciente, COUNT(*) AS consultas FROM RegistroClin GROUP BY idPaciente;
