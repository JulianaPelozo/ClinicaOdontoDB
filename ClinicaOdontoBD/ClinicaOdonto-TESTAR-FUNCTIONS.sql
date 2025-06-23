USE clinicaodonto;

-- Teste do cálculo da idade dos pacientes
SELECT nome as Paciente, dataNasc as "Data de Nascimento", CalcularIdadePaciente(dataNasc) as Idade 
	FROM Paciente 
		WHERE idPaciente = 1;
SELECT nome as Paciente, dataNasc as "Data de Nascimento", CalcularIdadePaciente(dataNasc) as Idade 
	FROM Paciente 
		WHERE idPaciente = 5;

-- Teste do total de agendamentos dos dentistas         
SELECT D.nome as Dentista, TotalAgendamentosDentista(D.idDentista, '2025-05-01', '2025-05-03') AS "Agendamentos para Maio"
	FROM Dentista D 
		WHERE D.idDentista = 215;

-- Teste do valor médio dos procedimentos odontológicos
SELECT ValorMedioProcedimentos() as "Valor Médio Procedimentos";

-- Teste para procurar agendamentos futuros
SELECT P.nome as Paciente, TemAgendamentoFuturo(P.idPaciente) as "Agendamentos futuros"
	FROM Paciente P 
		WHERE P.idPaciente = 1;
SELECT P.nome as Paciente, TemAgendamentoFuturo(P.idPaciente) as "Agendamentos futuros"
	FROM Paciente P 
		WHERE P.idPaciente = 10;
        
-- Teste para cálculo de receita/ano
SELECT TotalReceitaPorCategoriaAno('Procedimento', 2025) as "Receita total dos procedimentos 2025";
SELECT TotalReceitaPorCategoriaAno('Produto', 2025) as "Receita total dos produtos 2025";

-- Teste para retornar o funcionário mais bem pago de determinado cargo
SELECT FuncionarioMaisBemPagoPorCargo('Recepcionista') as "Recepcionista mais bem pago";
SELECT FuncionarioMaisBemPagoPorCargo('Porteiro') as "Porteiro mais bem pago";


