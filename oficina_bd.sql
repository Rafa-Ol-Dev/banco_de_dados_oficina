-- Criação do Banco de Dados
CREATE DATABASE oficina;

-- Utilização do Banco de Dados
USE oficina;

-- Tabela Cliente
CREATE TABLE cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF CHAR(11) UNIQUE NOT NULL,
    Telefone CHAR(11) NOT NULL,
    Email VARCHAR(100),
    Endereco VARCHAR(200),
    Cidade VARCHAR(100),
    Estado CHAR(2),
    CEP CHAR(8)
);

-- Tabela Veiculo
CREATE TABLE veiculo (
    idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
    Placa CHAR(7) UNIQUE NOT NULL,
    Modelo VARCHAR(50),
    Ano INT,
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);

-- Tabela Servico
CREATE TABLE servico (
    idServico INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10, 2) NOT NULL
);

-- Tabela Ordem de Servico
CREATE TABLE ordem_servico (
    idOrdemServico INT AUTO_INCREMENT PRIMARY KEY,
    DataEntrada DATE NOT NULL,
    DataSaida DATE,
    Observacoes TEXT,
    idVeiculo INT,
    FOREIGN KEY (idVeiculo) REFERENCES veiculo(idVeiculo)
);

-- Tabela Item de Servico
CREATE TABLE item_servico (
    idItemServico INT AUTO_INCREMENT PRIMARY KEY,
    idOrdemServico INT,
    idServico INT,
    Quantidade INT DEFAULT 1,
    FOREIGN KEY (idOrdemServico) REFERENCES ordem_servico(idOrdemServico),
    FOREIGN KEY (idServico) REFERENCES servico(idServico)
);

-- Tabela Pecas
CREATE TABLE pecas (
    idPeca INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10, 2) NOT NULL
);

-- Tabela Estoque
CREATE TABLE estoque (
    idEstoque INT AUTO_INCREMENT PRIMARY KEY,
    idPeca INT,
    Quantidade INT NOT NULL,
    FOREIGN KEY (idPeca) REFERENCES pecas(idPeca)
);

-- Tabela Fornecedor
CREATE TABLE fornecedor (
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CNPJ CHAR(14) UNIQUE NOT NULL,
    Telefone CHAR(11) NOT NULL,
    Email VARCHAR(100)
);

-- Tabela Funcionario
CREATE TABLE funcionario (
    idFuncionario INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF CHAR(11) UNIQUE NOT NULL,
    Telefone CHAR(11) NOT NULL,
    Email VARCHAR(100),
    Cargo VARCHAR(50),
    Salario DECIMAL(10, 2)
);