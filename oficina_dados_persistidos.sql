-- Inser��o de Dados na Tabela Cliente
INSERT INTO cliente (Nome, CPF, Telefone, Email, Endereco, Cidade, Estado, CEP)
VALUES
    ('Jo�o da Silva', '12345678901', '1122334455', 'joao@example.com', 'Rua A, 123', 'S�o Paulo', 'SP', '12345678'),
    ('Maria Souza', '98765432109', '5544332211', 'maria@example.com', 'Av. B, 456', 'Rio de Janeiro', 'RJ', '87654321'),
    ('Carlos Santos', '23456789012', '1199888777', 'carlos@example.com', 'Rua X, 567', 'S�o Paulo', 'SP', '23456789'),
    ('Ana Oliveira', '34567890123', '1133221122', 'ana@example.com', 'Av. Y, 890', 'Rio de Janeiro', 'RJ', '98765432'),
    ('Pedro Silva', '45678901234', '1155667788', 'pedro@example.com', 'Rua Z, 123', 'Belo Horizonte', 'MG', '34567890'),
    ('Sandra Souza', '56789012345', '1177889900', 'sandra@example.com', 'Rua W, 789', 'Porto Alegre', 'RS', '56789012'),
    ('Luiz Pereira', '67890123456', '1122334455', 'luiz@example.com', 'Av. K, 456', 'Salvador', 'BA', '67890123'),
    ('Fernanda Rodrigues', '78901234567', '1133445566', 'fernanda@example.com', 'Rua Q, 890', 'Fortaleza', 'CE', '78901234'),
    ('Ricardo Alves', '89012345678', '1166778899', 'ricardo@example.com', 'Av. M, 123', 'Recife', 'PE', '89012345'),
    ('Amanda Santos', '90123456789', '1144556677', 'amanda@example.com', 'Rua L, 456', 'Curitiba', 'PR', '90123456'),
    ('Juliana Lima', '01234567890', '1133665544', 'juliana@example.com', 'Av. N, 789', 'Manaus', 'AM', '01234567'),
    ('Marcos Oliveira', '10987654321', '1122446688', 'marcos@example.com', 'Rua P, 123', 'Natal', 'RN', '10987654'),
    ('Roberto Pereira', '12345678901', '1199888766', 'roberto@example.com', 'Av. U, 456', 'Macei�', 'AL', '12345678'),
    ('Carolina Almeida', '98765432109', '5544332266', 'carolina@example.com', 'Rua R, 456', 'Jo�o Pessoa', 'PB', '87654321'),
    ('Eduardo Santos', '23456789012', '1199888766', 'eduardo@example.com', 'Av. T, 123', 'Aracaju', 'SE', '23456789'),
    ('Simone Lima', '34567890123', '1133222244', 'simone@example.com', 'Rua V, 890', 'Teresina', 'PI', '98765432'),
    ('Gustavo Alves', '45678901234', '1155666677', 'gustavo@example.com', 'Av. W, 456', 'Cuiab�', 'MT', '34567890'),
    ('Larissa Silva', '56789012345', '1177888777', 'larissa@example.com', 'Rua D, 123', 'Campo Grande', 'MS', '56789012'),
    ('Renato Rodrigues', '67890123456', '1122332222', 'renato@example.com', 'Av. F, 456', 'Bel�m', 'PA', '67890123'),
    ('Silvia Pereira', '78901234567', '1133444444', 'silvia@example.com', 'Rua G, 890', 'Vit�ria', 'ES', '78901234'),
    ('Jos� Lima', '90123456789', '1144555555', 'jose@example.com', 'Av. J, 123', 'Porto Velho', 'RO', '01234567'),
    ('Mariana Almeida', '10987654321', '1122444444', 'mariana@example.com', 'Rua H, 456', 'Palmas', 'TO', '10987654');

-- Inser��o de Dados na Tabela Veiculo
INSERT INTO veiculo (Placa, Modelo, Ano, idCliente)
VALUES
    ('ABC1234', 'Ford Focus', 2020, 1),
    ('XYZ5678', 'Toyota Corolla', 2019, 2),
    ('DEF5678', 'Chevrolet Onix', 2021, 3),
    ('GHI9012', 'Honda Civic', 2022, 4),
    ('JKL3456', 'Volkswagen Golf', 2020, 5),
    ('MNO7890', 'Hyundai HB20', 2021, 6),
    ('PQR1234', 'Fiat Uno', 2019, 7),
    ('STU5678', 'Renault Kwid', 2020, 8),
    ('VWX9012', 'Nissan Sentra', 2018, 9),
    ('YZA3456', 'Toyota Corolla', 2021, 10),
    ('BCD7890', 'Ford Fiesta', 2019, 11),
    ('EFG1234', 'Chevrolet Cruze', 2022, 12),
    ('HIJ5678', 'Volkswagen Polo', 2021, 13),
    ('KLM9012', 'Honda Fit', 2020, 14),
    ('NOP3456', 'Hyundai Tucson', 2019, 15),
    ('QRS7890', 'Fiat Palio', 2021, 16),
    ('TUV1234', 'Renault Duster', 2020, 17),
    ('WXY5678', 'Nissan Versa', 2018, 18),
    ('ZAB9012', 'Toyota RAV4', 2022, 19),
    ('CDE3456', 'Ford Ranger', 2021, 20),
    ('NWR7359', 'Volkswagen Gol', 2011, 21),
    ('FGH7890', 'Chevrolet S10', 2019, 22);

-- Inser��o de Dados na Tabela Servico
INSERT INTO servico (Nome, Descricao, Preco)
VALUES
    ('Troca de �leo', 'Troca de �leo e filtro', 50.00),
    ('Revis�o Geral', 'Revis�o completa do ve�culo', 200.00),
    ('Alinhamento e Balanceamento', 'Alinhamento e balanceamento de rodas', 80.00),
    ('Troca de Pastilhas de Freio', 'Troca das pastilhas de freio dianteiras', 120.00),
    ('Limpeza de Bicos Injetores', 'Limpeza e manuten��o dos bicos injetores', 90.00),
    ('Troca de Correia Dentada', 'Substitui��o da correia dentada do motor', 150.00),
    ('Troca de �leo e Filtro', 'Troca de �leo do motor e filtro de �leo', 60.00),
    ('Reparo de Suspens�o', 'Reparo e manuten��o do sistema de suspens�o', 110.00),
    ('Servi�o de Balanceamento', 'Balanceamento das rodas do ve�culo', 40.00),
    ('Limpeza do Sistema de Arrefecimento', 'Limpeza e manuten��o do sistema de arrefecimento', 85.00),
    ('Reparo do Sistema de Freios', 'Reparo e manuten��o do sistema de freios', 100.00),
    ('Troca de Filtro de Ar', 'Troca do filtro de ar do motor', 20.00),
    ('Diagn�stico de Motor', 'Diagn�stico de problemas no motor', 75.00),
    ('Troca de L�mpadas', 'Substitui��o de l�mpadas queimadas', 10.00),
    ('Balanceamento de Rodas', 'Balanceamento das rodas e pneus', 35.00),
    ('Reparo de Transmiss�o', 'Reparo e manuten��o da transmiss�o', 180.00),
    ('Troca de Bateria', 'Troca da bateria do ve�culo', 50.00),
    ('Revis�o do Sistema El�trico', 'Revis�o e manuten��o do sistema el�trico', 70.00),
    ('Servi�o de Alinhamento', 'Alinhamento das rodas dianteiras', 60.00),
    ('Diagn�stico de Problemas El�tricos', 'Diagn�stico de falhas el�tricas', 55.00),
    ('Reparo de Dire��o Hidr�ulica', 'Reparo e manuten��o da dire��o hidr�ulica', 95.00),
    ('Troca de Velas de Igni��o', 'Troca de velas de igni��o do motor', 30.00);

-- Inser��o de Dados na Tabela Pecas
INSERT INTO pecas (Nome, Descricao, Preco)
VALUES
    ('Pastilhas de Freio', 'Pastilhas de freio dianteiras', 80.00),
    ('Filtro de Ar', 'Filtro de ar novo', 15.00),
    ('Amortecedor Dianteiro', 'Amortecedor dianteiro para ve�culos', 120.00),
    ('Bateria de Carro', 'Bateria para ve�culos automotivos', 100.00),
    ('Velas de Igni��o', 'Velas de igni��o para motores a gasolina', 10.00),
    ('Correia Dentada', 'Correia dentada para motores', 25.00),
    ('Sensor de Oxig�nio', 'Sensor de oxig�nio para sistema de inje��o', 35.00),
    ('�leo de Motor', '�leo de motor sint�tico 5W-30', 30.00),
    ('Filtro de �leo', 'Filtro de �leo de alta qualidade', 8.00),
    ('L�mpadas Hal�genas', 'L�mpadas hal�genas para far�is', 5.00),
    ('Disco de Freio', 'Disco de freio ventilado', 45.00),
    ('Radiador de Carro', 'Radiador para sistema de arrefecimento', 70.00),
    ('Jogo de Juntas', 'Jogo de juntas para motor', 40.00),
    ('Pneus de Ver�o', 'Pneus de ver�o para carros', 60.00),
    ('Pneus de Inverno', 'Pneus de inverno para carros', 80.00),
    ('Bomba de �gua', 'Bomba de �gua para refrigera��o do motor', 55.00),
    ('Sensor de ABS', 'Sensor de sistema de freios ABS', 25.00),
    ('Limpador de Para-brisa', 'Limpador de para-brisa premium', 12.00),
    ('Embreagem', 'Conjunto de embreagem para ve�culos', 90.00),
    ('Filtro de Combust�vel', 'Filtro de combust�vel de alta efici�ncia', 10.00),
    ('Corpo de Borboleta', 'Corpo de borboleta eletr�nico', 75.00),
    ('Sistema de Escape', 'Sistema de escape completo', 150.00),
    ('Rolamento de Roda', 'Rolamento de roda dianteira', 18.00),
    ('Kit de Corrente de Distribui��o', 'Kit de corrente de distribui��o', 55.00),
    ('Catalisador', 'Conversor catal�tico para escapamento', 65.00),
    ('Filtro de Ar Condicionado', 'Filtro de ar condicionado de cabine', 10.00);

-- Inser��o de Dados na Tabela Fornecedor
INSERT INTO fornecedor (Nome, CNPJ, Telefone, Email)
VALUES
    ('Fornecimento Auto Parts', '12345678901234', '1122334455', 'fornecimento@example.com'),
    ('Pe�as Express', '98765432109876', '5544332211', 'pecasexpress@example.com'),
    ('Auto Pe�as ABC', '56789012341234', '9988776655', 'autopecassul@example.com'),
    ('Pe�as e Componentes R�pidos', '43210987654321', '6677889900', 'componentesrapidos@example.com'),
    ('Fornecedores de Pe�as Veloz', '11112222333344', '1234123412', 'veloz@example.com');


-- Inser��o de Dados na Tabela Funcionario
INSERT INTO funcionario (Nome, CPF, Telefone, Email, Cargo, Salario)
VALUES
    ('Carlos Pereira', '01234567890', '1122334455', 'carlos@example.com', 'Mec�nico', 2400.00),
    ('Ana Santos', '09876543210', '5544332211', 'ana@example.com', 'Contas a Pagar', 2500.00),
    ('Lucas Oliveira', '12345678901', '1122334455', 'lucas@example.com', 'Respons�vel RH', 3000.00),
    ('Fernanda Silva', '98765432109', '5544332211', 'fernanda@example.com', 'Supervisor de Finan�as', 4000.00),
    ('Roberto Santos', '34567890123', '9988776655', 'roberto@example.com', 'T�cnico Mec�nico', 2500.00),
    ('Carla Souza', '56789012345', '6677889900', 'carla@example.com', 'Operador de Caixa', 1800.00),
    ('Paulo Mendes', '67890123456', '1234123412', 'paulo@example.com', 'Auxiliar de Mec�nica', 1800.00),
    ('Aline Pereira', '78901234567', '5555666677', 'aline@example.com', 'Mec�nico', 2400.00),
    ('Rafaela Costa', '89012345678', '4444555566', 'rafaela@example.com', 'Diretor Geral', 6000.00),
    ('Jos� Lima', '90123456789', '3333222211', 'jose@example.com', 'Eletrecista', 2200.00),
    ('Mariana Alves', '01234567890', '1111222233', 'mariana@example.com', 'Operador de Caixa', 1800.00),
    ('Pedro Rodrigues', '23456789012', '9999888877', 'pedro@example.com', 'Supervisor de Manuten��o', 4000.00);
