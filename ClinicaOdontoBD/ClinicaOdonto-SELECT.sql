Use clinicaodonto;

-- 1. Selecionar todos os pacientes
SELECT * FROM Paciente;

-- 2. Selecionar nome e telefone dos dentistas especializados em ortodontia
SELECT nome as "Nome", telefone as "Telefone" FROM Dentista
WHERE especialidade = 'Ortodontia';

-- 3. Selecionar nome e e-mails dos labs externos
SELECT nome as "Nome do Laboratório", email as "E-Mail" FROM labExterno;

-- 4. Obter todos os procedimentos acima de R$200,00
SELECT nomeProcedimento as "Procedimento", valor FROM procedimentoOdont
WHERE valor > 200.00;

-- 5. Listar agendamentos com datas futuras
SELECT idAgendamento as "Agendamento", dataHora as "Data e horário", idPaciente "ID do Paciente", 
idDentista "ID do Dentista" FROM Agendamento
WHERE dataHora > NOW();

-- 6. Exibir os nomes dos pacientes e valores totais faturados
SELECT P.nome, F.valorTotal
FROM Faturamento F
JOIN Paciente P ON F.idPaciente = P.idPaciente;

-- 7. Contar quantos pacientes existem por cidade
SELECT cidade as "Cidade", COUNT(*) AS totalPacientes
FROM Paciente
GROUP BY cidade;

-- 8. Mostrar funcionários ativos ordenados pelo maior salário
SELECT nome as "Nome", cargo "Cargo", salario "Salário"
	FROM Funcionario
		WHERE status = 'Ativo'
		ORDER BY salario DESC;
        
-- 9. Listar os nomes dos dentistas e suas especialidades
SELECT nome as "Nome", especialidade "Especialidade" FROM Dentista;

--  10. Total de receitas por categoria
SELECT categoria as "Categoria", SUM(valor) AS Total
FROM Receita
GROUP BY categoria;

-- 11. Total de despesas por tipo
SELECT tipo as "Tipo de despesa" , SUM(valor) AS Total
FROM Despesa
GROUP BY tipo;

-- Buscar todos os pacientes nascidos depois do ano 2000
SELECT nome, dataNasc FROM Paciente
WHERE dataNasc > '2000-01-01';

--  13. Ver os agendamentos com nome do paciente e do dentista
SELECT A.idAgendamento as "Agendamento" , P.nome as "Paciente", D.nome as "Dentista", A.dataHora as "Data e horário"
	FROM Agendamento A
		JOIN Paciente P ON A.idPaciente = P.idPaciente
		JOIN Dentista D ON A.idDentista = D.idDentista;
        
-- 14. Quantidade de funcionários por cargo
SELECT cargo, COUNT(*) AS qtdFuncionarios
	FROM Funcionario
	GROUP BY cargo;
    
-- 15. Buscar registros clínicos com nome do procedimento e diagnóstico
SELECT R.dataHora "Data e horário" , P.nomeProcedimento "Procedimento" , R.diagnostico "Diagnóstico"
	FROM RegistroClin R
	JOIN procedimentoOdont P ON R.idProcedimento = P.idProcedimento;
    
--  16. Mostrar os dados do endereço de cada laboratório
SELECT L.nome as "Laboratório", E.rua "Rua", E.numero "Número", E.cidade "Cidade"
FROM labExterno L
JOIN Endereco E ON L.idEndereco = E.idEndereco;

--  17. Faturamento total por status de pagamento
SELECT statusPag as "Status de Pagamento", SUM(valorTotal) AS Total
	FROM Faturamento
	GROUP BY statusPag;
    
-- 18. Pacientes sem telefone cadastrado
SELECT nome as "Nome", email as "E-Mail" FROM Paciente
	WHERE telefone IS NULL OR telefone = '';
    
--  19. Dentistas com nome iniciando com "Dra."
SELECT nome as "Dentista" FROM Dentista
	WHERE nome LIKE 'Dra.%';
    
-- 20. Total de agendamentos por dentista
SELECT D.nome, COUNT(*) AS totalAgendamentos
	FROM Agendamento A
		JOIN Dentista D ON A.idDentista = D.idDentista
		GROUP BY D.nome;






















