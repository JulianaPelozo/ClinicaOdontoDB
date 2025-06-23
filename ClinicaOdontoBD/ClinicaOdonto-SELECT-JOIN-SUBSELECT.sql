-- 1. Pacientes e o último procedimento realizado
SELECT P.nome AS Paciente,
       (SELECT PO.nomeProcedimento
        FROM RegistroClin RC
        JOIN procedimentoOdont PO ON RC.idProcedimento = PO.idProcedimento
        WHERE RC.idPaciente = P.idPaciente
        ORDER BY RC.dataHora DESC
        LIMIT 1) as "Último Procedimento"
			FROM Paciente P;
        
-- 2. Pacientes e o valor total já faturado (com status de faturamento)
SELECT P.nome AS Paciente, F.valorTotal as Total, F.statusPag as "Status"
	FROM Paciente P
		JOIN Faturamento F ON P.idPaciente = F.idPaciente;

-- 3. Detalhes de procedimentos realizados por dentista
SELECT D.nome as "Dentista", PO.nomeProcedimento as "Nome do Procedimento", RC.dataHora as "Data e hora"
	FROM RegistroClin RC
		JOIN Dentista D ON RC.idDentista = D.idDentista
		JOIN procedimentoOdont PO ON RC.idProcedimento = PO.idProcedimento;

-- 4. Pacientes que realizaram tratamento de canal
SELECT nome as Nome FROM Paciente
WHERE idPaciente IN (
    SELECT idPaciente FROM RegistroClin WHERE idProcedimento = 405
);

-- 5. Dentistas que atenderam mais de um paciente 
SELECT D.nome as Dentista, COUNT(DISTINCT RC.idPaciente) AS Pacientes
	FROM RegistroClin RC
		JOIN Dentista D ON RC.idDentista = D.idDentista
		GROUP BY D.nome
		HAVING Pacientes >= 1;

-- 6. Total de faturamento por status de pagamento
SELECT statusPag as Status, SUM(valorTotal) as Total
	FROM Faturamento GROUP BY statusPag;

-- 7. Funcionários e número de agendamentos intermediados
SELECT F.nome, COUNT(A.idAgendamento) AS Agendamentos
	FROM Funcionario F
		JOIN Agendamento A ON F.idFuncionario = A.idFuncionario
		GROUP BY F.nome;

-- 8. Pacientes com procedimentos estéticos
SELECT DISTINCT P.nome as Nome
	FROM Paciente P
		JOIN RegistroClin RC ON P.idPaciente = RC.idPaciente
		WHERE RC.idProcedimento IN (410, 402, 408);

-- 9. Dentista e procedimentos que mais realiza
SELECT D.nome, PO.nomeProcedimento, COUNT(*) AS Quantidade
	FROM RegistroClin RC
		JOIN Dentista D ON RC.idDentista = D.idDentista
		JOIN procedimentoOdont PO ON RC.idProcedimento = PO.idProcedimento
			GROUP BY D.nome, PO.nomeProcedimento
			ORDER BY Quantidade DESC;

-- 10. Total de procedimentos por cidade do paciente
SELECT P.cidade as Cidade, COUNT(RC.idRegistroClin) as Total
	FROM RegistroClin RC
		JOIN Paciente P ON RC.idPaciente = P.idPaciente
		GROUP BY P.cidade;

-- 11. Pacientes por cidade 
SELECT DISTINCT cidade as Cidade,
    (SELECT COUNT(*) FROM Paciente P2 WHERE P2.cidade = P1.cidade) AS Pacientes
	FROM Paciente P1;

-- 12. Dentistas e os pacientes únicos atendidos
SELECT D.nome AS Dentista, COUNT(DISTINCT RC.idPaciente) as Pacientes
	FROM Dentista D
		JOIN RegistroClin RC ON D.idDentista = RC.idDentista
		GROUP BY D.nome;

-- 13. Receita por categoria
SELECT DISTINCT categoria as Categorias,
    (SELECT SUM(R2.valor)
     FROM Receita R2
     WHERE R2.categoria = R1.categoria) as Total
FROM Receita R1;

-- 14. Despesas por tipo *
SELECT DISTINCT D1.tipo as Tipo,
    (SELECT SUM(D2.valor) FROM Despesa D2 WHERE D2.tipo = D1.tipo) as Total
	FROM Despesa D1;

-- 15. Pacientes com mais de um agendamento
SELECT P.nome as Paciente, COUNT(*) AS Total
	FROM Paciente P
		JOIN Agendamento A ON P.idPaciente = A.idPaciente
			GROUP BY P.nome
			HAVING Total > 1;

-- 16. Pacientes e diagnósticos
SELECT P.nome, RC.diagnostico
	FROM RegistroClin RC
		JOIN Paciente P ON RC.idPaciente = P.idPaciente;

-- 17. Dentistas por especialidade
SELECT DISTINCT D1.especialidade as Especialidade,
    (SELECT COUNT(*) FROM Dentista D2 WHERE D2.especialidade = D1.especialidade) AS Total
	FROM Dentista D1;

-- 18. Receita total de procedimentos vs produtos
SELECT DISTINCT R1.categoria as Categoria,
    (SELECT SUM(R2.valor) FROM Receita R2 WHERE R2.categoria = R1.categoria) AS Total
	FROM Receita R1;

-- 19. Funcionários ativos e seus cargos
SELECT F1.nome as Funcionário, F1.cargo as Cargo,
    (SELECT COUNT(*) FROM Agendamento A WHERE A.idFuncionario = F1.idFuncionario) as Agendamentos
	FROM Funcionario F1
		WHERE F1.status = 'Ativo';

-- 20. Quantidade de procedimentos realizados por tipo
SELECT PO.nomeProcedimento as Procedimento, COUNT(*) as Total
	FROM RegistroClin RC
		JOIN procedimentoOdont PO ON RC.idProcedimento = PO.idProcedimento
		GROUP BY PO.nomeProcedimento;

