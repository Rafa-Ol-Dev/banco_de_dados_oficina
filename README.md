
# Projeto Lógico de Banco de Dados para Oficina

Neste desafio, utilizei meu esquema conceitual, criado no desafio do módulo de modelagem de BD com modelo ER, para criar o esquema lógico para o contexto de uma oficina. Pude definir todas as etapas. Desde o esquema até a implementação do banco de dados.




## Aprendizados

Aqui, pude aplicar meus conhecimentos em modelagem de banco de dados e traduzir os requisitos do cenário em uma estrutura lógica coerente usando o MySQL.
## Diretrizes

+ Não há um mínimo de queries a serem realizadas;
+ Os tópicos supracitados devem estar presentes nas queries;
+ Elaborar perguntas que podem ser respondidas pelas consultas;
+ As cláusulas podem estar presentes em mais de uma query.
## Objetivos

+ Criar o esquema lógico;
+ Realizar a criação do Script SQL para criação do esquema do banco de dados;
+ Realizar a persistência de dados para realização de testes;
+ Especificar queries mais complexas do que apresentadas durante a explanação do desafio.

__Algumas das queries SQL foram criadas segundo as cláusulas abaixo:__
+ Recuperações simples com SELECT Statement;
+ Filtros com WHERE Statement;
+ Expressões para gerar atributos derivados;
+ Definição de ordenações dos dados com ORDER BY;
+ Condições de filtros aos grupos – HAVING Statement;
+ Criação de junções entre tabelas para fornecer uma perspectiva mais complexa dos dados;

## Estrutura do Banco de Dados

### Contexto do Modelo Lógico baseado no Conceitual construído

#### Projeto de Banco de Dados de uma Oficina
__Contexto__: Levantamento de requisitos;

__Projeto Conceitual__: Modelo Entidade Relacionamento;

__Projeto Lógico__: Modelo Relacional.

#### Tabelas de Entidades

O banco de dados foi modelado considerando as seguintes tabelas principais:

1. **Cliente:**
   - A entidade "Cliente" representa informações sobre os clientes da oficina.
   - Ela armazena dados como nome, CPF, telefone, email, endereço, cidade, estado e CEP dos clientes.
   - É usada para registrar e manter informações detalhadas sobre os clientes da oficina, permitindo a identificação e o contato eficaz com eles.

2. **Veiculo:**
   - A entidade "Veiculo" representa informações sobre os veículos dos clientes.
   - Ela armazena detalhes como placa, modelo, ano e uma referência ao cliente proprietário do veículo (por meio do campo "idCliente").
   - É usada para rastrear informações sobre os veículos que estão sendo atendidos na oficina e para associar esses veículos aos clientes correspondentes.

3. **Servico:**
   - A entidade "Servico" contém informações sobre os serviços oferecidos pela oficina.
   - Ela armazena dados como nome, descrição e preço de cada serviço.
   - É usada para manter um catálogo de serviços disponíveis na oficina, incluindo seus preços e descrições.

4. **Ordem de Servico:**
   - A entidade "Ordem de Servico" representa informações sobre as ordens de serviço criadas para atender veículos específicos.
   - Ela inclui detalhes como a data de entrada, data de saída, observações e uma referência ao veículo associado (por meio do campo "idVeiculo").
   - É usada para rastrear e gerenciar as ordens de serviço, incluindo informações sobre quando um veículo entrou na oficina, quando foi concluído e quaisquer observações relevantes.

5. **Item de Servico:**
   - A entidade "Item de Servico" registra os serviços realizados em cada ordem de serviço.
   - Ela inclui informações sobre o serviço (por meio do campo "idServico"), a ordem de serviço à qual o serviço está associado (por meio do campo "idOrdemServico") e a quantidade de vezes que o serviço foi realizado (campo "Quantidade").
   - É usada para vincular serviços específicos a ordens de serviço e registrar quantas vezes cada serviço foi executado.

6. **Pecas:**
   - A entidade "Pecas" mantém informações sobre as peças disponíveis na oficina.
   - Ela inclui detalhes como nome, descrição e preço de cada peça.
   - É usada para manter um catálogo de peças disponíveis, permitindo que sejam usadas em ordens de serviço e registrando seus preços e descrições.

7. **Estoque:**
   - A entidade "Estoque" rastreia o estoque de peças disponíveis na oficina.
   - Ela registra a quantidade de cada peça disponível (campo "Quantidade") e faz referência à peça específica (por meio do campo "idPeca").
   - É usada para manter o controle do estoque de peças na oficina, permitindo que se saiba quantas unidades de cada peça estão disponíveis.

8. **Fornecedor:**
   - A entidade "Fornecedor" armazena informações sobre os fornecedores de peças e serviços da oficina.
   - Ela contém detalhes como nome, CNPJ, telefone e email de cada fornecedor.
   - É usada para manter um registro dos fornecedores com os quais a oficina faz negócios e permite o contato com eles quando necessário.

9. **Funcionario:**
   - A entidade "Funcionario" contém informações sobre os funcionários da oficina.
   - Ela inclui dados como nome, CPF, telefone, email, cargo e salário de cada funcionário.
   - É usada para registrar detalhes sobre os funcionários da oficina, incluindo seus cargos e informações de contato.

## Consultas SQL
Foram elaboradas consultas SQL para realizar diversas operações no banco de dados, incluindo recuperações simples, filtros, expressões para atributos derivados, ordenações, condições de filtros aos grupos e junções entre tabelas. Abaixo, estão alguns exemplos dessas consultas:

+ Recuperação simples de clientes:
~~~
SELECT Nome, CPF, Telefone
FROM cliente;
~~~
+ Filtrar veículos por modelo:
~~~
SELECT Placa, Modelo
FROM veiculo
WHERE Modelo = 'Ford Focus';
~~~
+ Calcular o total gasto em serviços por ordem de serviço:
~~~
SELECT os.idOrdemServico, SUM(s.Preco) AS TotalGasto
FROM ordem_servico os
INNER JOIN item_servico is ON os.idOrdemServico = is.idOrdemServico
INNER JOIN servico s ON is.idServico = s.idServico
GROUP BY os.idOrdemServico;
~~~
+ Listar todas as peças com preço maior que 50.00, ordenadas por preço:
~~~
SELECT Nome, Preco
FROM pecas
WHERE Preco > 50.00
ORDER BY Preco;
~~~
+ Encontrar funcionários com o maior salário:
~~~
SELECT Nome, Salario
FROM funcionario
WHERE Salario = (SELECT MAX(Salario) FROM funcionario);
~~~
Essas são apenas algumas das consultas possíveis com base no esquema e nos dados fornecidos.

---

#### 💻 _Criado por Rafael Oliveira, 2023._