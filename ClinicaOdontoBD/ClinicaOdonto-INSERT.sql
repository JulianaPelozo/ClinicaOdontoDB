USE clinicaodonto;

INSERT INTO Clinica (
	idClinica, nomeFantasia, nome, CNPJ, telefone, email, horarioFuncionamento, rua, 
    numero, bairro, cidade, UF, CEP, complemento
) VALUES
(485, 'Clinique Odonto', 'Clínica Odontológica Clinique Odonto', '56.789.012/0001-34', '(11) 5678-9012', 'clinique.odonto@gmail.com', 'Seg - Sab: 08:00 - 20:00', 
 'Avenida Brasil', '999', 'Vila Maria', 'São Caetano do Sul', 'SP', '09510-060', 'Sala 4');
 
INSERT INTO Endereco (
    idEndereco, rua, numero, bairro, cidade, UF, CEP, complemento
) VALUES
(1, 'Rua da Ciência', '100', 'Laboratório Central', 'São Paulo', 'SP', '04568-100', 'Bloco A'),
(2, 'Avenida dos Laboratórios', '200', 'Jardim das Ciências', 'Osasco', 'SP', '06080-200', 'Andar 3'),
(3, 'Rua das Indústrias', '321', 'Parque Industrial', 'São Bernardo do Campo', 'SP', '09710-300', 'Galpão 12'),
(4, 'Rua do Conhecimento', '400', 'Centro', 'Guarulhos', 'SP', '07070-400', 'Laboratório 2º Andar'),
(5, 'Avenida Paulo VI', '123', 'Vila São João', 'Santo André', 'SP', '09090-500', 'Laboratório de Testes');

INSERT INTO labExterno (
    idLaboratorio, nome, email, telefone, idEndereco
) VALUES
(1, 'Laboratório OdontoPlus', 'contato@odontoplus.com.br', '(11) 2123-4567', 1),
(2, 'Laboratório BioDental', 'bio.dental@laboratorio.com', '(11) 2234-5678', 2),
(3, 'Laboratório Dentisys', 'contato@dentisys.com.br', '(11) 3345-6789', 3),
(4, 'Laboratório OdontoLab', 'info@odontolab.com.br', '(11) 4456-7890', 4),
(5, 'Laboratório ProDent', 'atendimento@prodentlab.com', '(11) 5567-8901', 5);


INSERT INTO Paciente (
    idPaciente, nome, CPF, dataNasc, genero, telefone, email, historico, 
    rua, numero, bairro, cidade, UF, CEP, complemento
) VALUES
(1, 'Ana Costa', '123.456.789-01', '1990-05-12', 'Feminino', '(11) 91234-5678', 'ana.costa@gmail.com', 'Nenhum problema relatado.',
 'Rua das Flores', '123', 'Jardim Paulista', 'São Paulo', 'SP', '01415-002', 'Apto 12'), 
(2, 'Bruno Rocha', '234.567.890-12', '1985-08-25', 'Masculino', '(11) 92345-6789', 'bruno.rocha@hotmail.com', 'Sensibilidade em dentes posteriores.',
 'Avenida Brasil', '456', 'Centro', 'Guarulhos', 'SP', '07010-000', 'Casa térrea'),
(3, 'Carla Mendes', '345.678.901-23', '1992-11-03', 'Feminino', '(11) 93456-7890', 'carla.m@gmail.com', 'Cárie tratada no molar inferior.',
 'Rua Aurora', '89', 'Bela Vista', 'São Paulo', 'SP', '01310-000', ''),
(4, 'Daniela Faria', '456.789.012-34', '1988-03-17', 'Feminino', '(11) 94567-8901', 'daniela.faria@outlook.com', 'Tratamento ortodôntico em andamento.',
 'Rua São João', '321', 'Vila Assunção', 'Santo André', 'SP', '09030-320', 'Sobrado'),
(5, 'Eduardo Pereira', '567.890.123-45', '1979-09-09', 'Masculino', '(11) 95678-9012', 'edu.pereira@yahoo.com', 'Canal realizado no dente 26.',
 'Rua Dona Primitiva Vianco', '754', 'Centro', 'Osasco', 'SP', '06013-000', 'Sala 2'),
 (6, 'Fernanda Lima', '678.901.234-56', '1995-07-21', 'Feminino', '(11) 96789-0123', 'fernanda.lima@gmail.com', 'Consulta preventiva anual.',
 'Rua das Acácias', '112', 'Mooca', 'São Paulo', 'SP', '03127-020', ''),
(7, 'Gabriel Torres', '789.012.345-67', '1982-01-30', 'Masculino', '(11) 97890-1234', 'gabriel.torres@bol.com.br', 'Histórico de gengivite.',
 'Rua Itapoan', '300', 'Vila Galvão', 'Guarulhos', 'SP', '07062-010', 'Fundos'),
(8, 'Helena Soares', '890.123.456-78', '2000-12-15', 'Feminino', '(11) 98901-2345', 'helena.soares@icloud.com', 'Prótese parcial removível instalada.',
 'Rua São Carlos', '47', 'Centro', 'São Caetano do Sul', 'SP', '09510-320', 'Apto 45'),
(9, 'Igor Mendes', '901.234.567-89', '1993-06-05', 'Masculino', '(11) 99012-3456', 'igor.mendes@gmail.com', 'Bruxismo detectado e em monitoramento.',
 'Avenida Kennedy', '1210', 'Vila Maria', 'São Bernardo do Campo', 'SP', '09726-263', ''),
(10, 'Juliana Teixeira', '012.345.678-90', '1987-04-18', 'Feminino', '(11) 90123-4567', 'juliana.teixeira@hotmail.com', 'Check-up odontológico realizado.',
 'Rua Dom Pedro I', '588', 'Ipiranga', 'São Paulo', 'SP', '04209-001', 'Apto 21B');
 
INSERT INTO Funcionario (
    idFuncionario, nome, CPF, dataNasc, genero, telefone, email, cargo, salario, status,
    rua, numero, bairro, cidade, UF, CEP, complemento
) VALUES
(201, 'Fernanda Oliveira', '123.987.654-00', '1991-02-14', 'Feminino', '(11) 91234-0001', 'fernanda.oliveira@clinicasorriso.com', 'Recepcionista', 2200.00, 'Ativo',
 'Rua Tuiuti', '101', 'Tatuapé', 'São Paulo', 'SP', '03081-000', 'Sala 1'),
(202, 'Gustavo Martins', '234.876.543-11', '1986-06-28', 'Masculino', '(11) 92345-1112', 'gustavo.martins@clinicasorriso.com', 'Auxiliar de Saúde Bucal', 2500.00, 'Ativo',
 'Rua Carijós', '210', 'Vila Alzira', 'Santo André', 'SP', '09060-002', ''),
(203, 'Helena Santos', '345.765.432-22', '1979-09-12', 'Feminino', '(11) 93456-2223', 'helena.santos@clinicasorriso.com', 'Zeladora', 1800.00, 'Ativo',
 'Rua das Palmeiras', '345', 'Centro', 'Guarulhos', 'SP', '07023-010', ''),
(204, 'Lucas Ferreira', '456.654.321-33', '1988-03-05', 'Masculino', '(11) 94567-3334', 'lucas.ferreira@clinicasorriso.com', 'Porteiro', 2000.00, 'Ativo',
 'Rua Itália', '89', 'Centro', 'São Caetano do Sul', 'SP', '09510-050', 'Bloco A'),
(205, 'Mariana Lopes', '567.543.210-44', '1993-12-01', 'Feminino', '(11) 95678-4445', 'mariana.lopes@clinicasorriso.com', 'Assistente Administrativo', 2600.00, 'Ativo',
 'Rua das Hortênsias', '77', 'Moema', 'São Paulo', 'SP', '04517-050', 'Apto 3');


INSERT INTO Agendamento (idAgendamento, dataHora, idPaciente, idDentista) VALUES
(854, '2025-05-01 09:00:00', 1, 202),
(986, '2025-05-01 10:30:00', 2, 205),
(634, '2025-05-01 14:00:00', 3, 210),
(987, '2025-05-02 08:00:00', 4, 215),
(875, '2025-05-02 11:00:00', 5, 220),
(789, '2025-05-02 15:30:00', 1, 230),
(963, '2025-05-03 09:00:00', 2, 240),
(254, '2025-05-03 13:00:00', 3, 215),
(784, '2025-05-03 16:00:00', 4, 210),
(369, '2025-05-04 10:00:00', 5, 202);

INSERT INTO procedimentoOdont (idProcedimento, nomeProcedimento, descricao, valor) VALUES
(401, 'Limpeza Dental', 'Procedimento de remoção de tártaro e placa bacteriana dos dentes.', 150.00),
(402, 'Clareamento Dental', 'Técnica de clareamento dos dentes para melhorar a estética do sorriso.', 600.00),
(403, 'Obturação', 'Tratamento de cáries utilizando material restaurador para reconstruir o dente.', 250.00),
(404, 'Extração de Dente', 'Remoção cirúrgica de dente comprometido.', 400.00),
(405, 'Tratamento de Canal', 'Procedimento para remover a polpa infectada do dente e selá-lo.', 1200.00),
(406, 'Aplicação de Flúor', 'Aplicação tópica de flúor para fortalecer o esmalte dos dentes.', 100.00),
(407, 'Instalação de Aparelho Ortodôntico', 'Colocação de aparelho fixo para correção da posição dos dentes.', 2500.00),
(408, 'Implante Dentário', 'Colocação de pino de titânio para substituição de dente perdido.', 4500.00),
(409, 'Prótese Dentária', 'Substituição de dentes ausentes com prótese parcial ou total.', 3000.00),
(410, 'Restauração Estética', 'Procedimento para restaurar dentes danificados usando resina estética.', 350.00);

INSERT INTO SeguroSaude (idSeguro, nomeSeguro, cobertura, planoSaude) VALUES
(101, 'Saúde Total', 'Consultas, exames laboratoriais, internações, cirurgias, pronto-socorro e atendimento odontológico.', 'Amil 400'),
(103, 'Bem Estar Plus', 'Consultas médicas, exames, terapias, cirurgias e internações em enfermaria e apartamento.', 'Bradesco Saúde Nacional Flex'),
(107, 'Vida Leve', 'Consultas de rotina, emergências médicas, exames laboratoriais básicos e internação hospitalar.', 'Unimed Nacional'),
(110, 'Premium Saúde', 'Cobertura completa para consultas, exames, partos, cirurgias complexas e transplantes.', 'SulAmérica Direto'),
(115, 'Saúde Familiar', 'Consultas, exames preventivos, vacinação, atendimento pediátrico e obstétrico.', 'NotreDame Intermédica Advance'),
(120, 'Essencial Care', 'Atendimento ambulatorial, emergencial, cirurgias simples e internações em enfermaria.', 'Hapvida Nosso Plano'),
(125, 'Pleno Vida', 'Consultas especializadas, exames de alta complexidade, internações e assistência domiciliar.', 'Porto Seguro Saúde'),
(130, 'TotalMed', 'Consultas, exames, atendimento de urgência e cirurgias em rede credenciada.', 'Allianz Saúde Empresarial'),
(135, 'Bem Saúde', 'Cobertura de consultas médicas, exames simples e atendimento emergencial.', 'GreenLine Saúde Básico Plus'),
(140, 'Viver Bem', 'Atendimento clínico geral, exames laboratoriais, atendimento emergencial e pequenas cirurgias.', 'São Francisco Saúde Integral');

INSERT INTO Dentista (idDentista, nome, email, telefone, especialidade, CFO) VALUES
(202, 'Dr. Lucas Moreira', 'lucas.moreira@clinicadental.com', '(11) 99876-5432', 'Ortodontia', 'SP-12345'),
(205, 'Dra. Camila Souza', 'camila.souza@clinicadental.com', '(21) 98765-4321', 'Implantodontia', 'RJ-67890'),
(210, 'Dr. Rafael Pereira', 'rafael.pereira@clinicadental.com', '(31) 97654-3210', 'Periodontia', 'MG-11223'),
(215, 'Dra. Ana Beatriz Lima', 'ana.beatriz@clinicadental.com', '(41) 96543-2109', 'Endodontia', 'PR-44556'),
(220, 'Dr. Bruno Fernandes', 'bruno.fernandes@clinicadental.com', '(51) 95432-1098', 'Odontopediatria', 'RS-77889'),
(225, 'Dra. Juliana Costa', 'juliana.costa@clinicadental.com', '(61) 94321-0987', 'Prótese Dentária', 'DF-33445'),
(230, 'Dr. Eduardo Almeida', 'eduardo.almeida@clinicadental.com', '(71) 93210-9876', 'Cirurgia Bucomaxilofacial', 'BA-55667'),
(240, 'Dra. Fernanda Ribeiro', 'fernanda.ribeiro@clinicadental.com', '(81) 92109-8765', 'Estética Dental', 'PE-88990'),
(250, 'Dr. Pedro Martins', 'pedro.martins@clinicadental.com', '(91) 91098-7654', 'Radiologia Odontológica', 'PA-22334'),
(260, 'Dra. Mariana Silva', 'mariana.silva@clinicadental.com', '(62) 90987-6543', 'Odontologia do Trabalho', 'GO-55678');


INSERT INTO RegistroClin (idAgendamento, idPaciente, idDentista, idProcedimento, dataHora, diagnostico) VALUES
(854, 1, 202, 401, '2025-04-28 09:30:00', 'Consulta de rotina, sem alterações significativas no quadro clínico. Recomendado acompanhamento ortodôntico.'),
(986, 2, 205, 402, '2025-04-28 10:00:00', 'Realizado procedimento de colocação de implante dentário. Recomendação de cuidados pós-operatórios.'),
(634, 3, 210, 403, '2025-04-28 11:00:00', 'Tratamento periodontal, limpeza profunda realizada com sucesso. Aconselhado retorno em 6 meses.'),
(987, 4, 215, 404, '2025-04-28 14:00:00', 'Endodontia realizada com êxito. Restauração temporária aplicada, acompanhamento para futura restauração definitiva.'),
(875, 5, 220, 405, '2025-04-28 15:00:00', 'Tratamento de prótese dentária, adequação de coroa. Observado boa adaptação do paciente à prótese.'),
(789, 6, 225, 406, '2025-04-28 16:30:00', 'Procedimento de extração dentária realizado sem complicações. Aconselhado uso de medicação analgésica.'),
(963, 7, 230, 407, '2025-04-28 17:00:00', 'Cirurgia bucomaxilofacial realizada com sucesso. Monitoramento de sinais pós-cirúrgicos recomendado.'),
(254, 8, 240, 408, '2025-04-29 08:00:00', 'Procedimento estético de facetas dentárias realizadas, com sucesso na adaptação ao sorriso do paciente.'),
(784, 9, 250, 409, '2025-04-29 10:30:00', 'Radiografia odontológica solicitada para diagnóstico preciso de cáries interproximais.'),
(369, 10, 260, 410, '2025-04-29 13:00:00', 'Atendimento odontológico do trabalho, verificação da saúde bucal dos colaboradores, sem grandes alterações.');

INSERT INTO Faturamento (idFaturamento, idPaciente, valorTotal, statusPag) VALUES
(101, 1, 150.00, 'Pago'),
(102, 2, 850.00, 'Pago Parcial'),
(103, 3, 1200.00, 'Em Aberto'),
(104, 4, 250.00, 'Pago'),
(105, 5, 3100.00, 'Pago');

INSERT INTO Receita 
(idReceita, categoria, tipo, valor) 
VALUES
(201, 'Procedimento', 'Clareamento Dental', 600.00),
(202, 'Procedimento', 'Tratamento de Canal', 1200.00),
(203, 'Produto', 'Kit de Higiene Bucal', 80.00),
(204, 'Procedimento', 'Limpeza Dental', 150.00),
(205, 'Procedimento', 'Instalação de Aparelho', 2500.00),
(206, 'Produto', 'Protetor Bucal', 200.00),
(207, 'Procedimento', 'Restauração Estética', 350.00),
(208, 'Produto', 'Escova Ortodôntica', 25.00),
(209, 'Procedimento', 'Implante Dentário', 4500.00),
(210, 'Serviço Extra', 'Consulta de Avaliação', 100.00);

INSERT INTO Despesa (
    idDespesa, categoria, tipo, valor
) VALUES
(101, 'Material', 'Materiais Odontológicos', 1500.00),
(102, 'Funcionário', 'Salários', 4500.00),
(103, 'Manutenção', 'Manutenção de Equipamentos', 800.00),
(104, 'Serviço Externo', 'Laboratório Odontológico', 1200.00),
(105, 'Aluguel', 'Aluguel do Imóvel', 3000.00),
(106, 'Serviço Externo', 'Consultoria Odontológica', 2000.00),
(107, 'Material', 'Produtos de Limpeza', 350.00),
(108, 'Funcionário', 'Benefícios Funcionários', 1000.00),
(109, 'Energia', 'Conta de Energia Elétrica', 700.00),
(110, 'Marketing', 'Campanha Publicitária', 1500.00);




