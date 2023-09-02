-- Recupera��o de Clientes
SELECT * FROM cliente;

-- Recupera��o de Ve�culos de um Cliente
SELECT * FROM veiculo WHERE idCliente = 1;

-- Total de Servi�os realizados em uma Ordem de Servi�o
SELECT idOrdemServico, COUNT(*) AS Total_de_Servicos
FROM item_servico
GROUP BY idOrdemServico;

-- Valor total de uma Ordem de Servi�o
SELECT os.idOrdemServico, SUM(serv.Preco * is.Quantidade) AS Valor_Total
FROM ordem_servico os
INNER JOIN item_servico is ON os.idOrdemServico = is.idOrdemServico
INNER JOIN servico serv ON is.idServico = serv.idServico
GROUP BY os.idOrdemServico;

-- Estoque Atual de Pe�as
SELECT p.Nome, SUM(e.Quantidade) AS Estoque_Atual
FROM pecas p
INNER JOIN estoque e ON p.idPeca = e.idPeca
GROUP BY p.Nome;

-- Fornecedores que fornecem uma Pe�a espec�fica
SELECT peca.Nome, forn.Nome AS Nome_do_Fornecedor
FROM pecas peca
INNER JOIN fornecedor_fornecimento ff ON peca.idPeca = ff.idPeca
INNER JOIN fornecedor forn ON ff.idFornecedor = forn.idFornecedor
WHERE peca.Nome = 'Pastilhas de Freio';
