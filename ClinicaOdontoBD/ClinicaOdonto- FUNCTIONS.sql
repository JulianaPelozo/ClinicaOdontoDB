USE clinicaodonto;

-- 1. Função para calcular a idade de um paciente
DELIMITER @
CREATE FUNCTION CalcularIdadePaciente(p_dataNasc DATE)
	RETURNS INT
	DETERMINISTIC
		BEGIN
    RETURN TIMESTAMPDIFF(YEAR, p_dataNasc, CURDATE());
		END @
DELIMITER ;

-- 2. Função para retornar o total de agendamentos de um dentista em um período
DELIMITER @
CREATE FUNCTION TotalAgendamentosDentista(p_idDentista INT, p_dataInicio DATE, p_dataFim DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM Agendamento
    WHERE idDentista = p_idDentista
      AND dataHora BETWEEN p_dataInicio AND p_dataFim;
    RETURN total;
END @
DELIMITER ;

-- 3. Função para obter o valor médio dos procedimentos odontológicos
DELIMITER @
CREATE FUNCTION ValorMedioProcedimentos()
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE valor_medio DECIMAL(10,2);
    SELECT AVG(valor) INTO valor_medio
    FROM procedimentoOdont;
    RETURN valor_medio;
END @
DELIMITER ;

-- 4. Função para verificar se um paciente tem agendamentos futuros
DELIMITER @
CREATE FUNCTION TemAgendamentoFuturo(p_idPaciente INT)
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE tem_agendamento BOOLEAN;
    SELECT EXISTS (
        SELECT 1
        FROM Agendamento
        WHERE idPaciente = p_idPaciente AND dataHora > NOW()
    ) INTO tem_agendamento;
    RETURN tem_agendamento;
END @
DELIMITER ;

-- 5. Função para calcular o total de receitas por categoria em um ano
DELIMITER @
CREATE FUNCTION TotalReceitaPorCategoriaAno(p_categoria VARCHAR(50), p_ano INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(valor) INTO total
    FROM Receita
    WHERE categoria = p_categoria
      AND YEAR(CURDATE()) = p_ano; -- Supondo que Receita tenha uma coluna de data de emissão ou algo similar, aqui usa CURDATE() como placeholder.
    RETURN total;
END @
DELIMITER ;

-- 6. Função para obter o nome do funcionário mais bem pago em um cargo específico
DELIMITER @
CREATE FUNCTION FuncionarioMaisBemPagoPorCargo(p_cargo VARCHAR(50))
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE nome_funcionario VARCHAR(100);
    SELECT nome INTO nome_funcionario
    FROM Funcionario
    WHERE cargo = p_cargo
    ORDER BY salario DESC
    LIMIT 1;
    RETURN nome_funcionario;
END @
DELIMITER ;