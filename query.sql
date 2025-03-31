# Liste todos os livros cadastrados no banco de dados.
SELECT NOME_LIVRO FROM LIVROS;

# Mostre os nomes dos vendedores cadastrados.
SELECT NOME_VENDEDOR FROM VENDEDORES;

# Exiba todas as vendas registradas.
SELECT * FROM VENDAS;

# Liste os livros da categoria "Romance".
SELECT * FROM LIVROS WHERE CATEGORIA = "Romance";

# Mostre as vendas realizadas pelo vendedor "Maria Souza".
SELECT VENDAS.ID_PEDIDO, VENDEDORES.NOME_VENDEDOR, VENDAS.ID_LIVRO, VENDAS.QTD_VENDIDA, VENDAS.DATA_VENDA
FROM VENDAS, VENDEDORES
WHERE (VENDAS.ID_VENDEDOR = VENDEDORES.ID_VENDEDOR AND VENDEDORES.NOME_VENDEDOR = "Maria Souza");

# Exiba os livros cujo preço seja maior que R$ 40,00.
SELECT NOME_LIVRO, PRECO 
FROM LIVROS 
WHERE PRECO > 40;

# Liste os pedidos de venda realizados após o dia 2025-03-05.
SELECT * FROM VENDAS WHERE DATA_VENDA = "2025-03-05";

# Liste todas as vendas mostrando o nome do vendedor e o nome do livro vendido.
SELECT VENDAS.ID_PEDIDO, VENDEDORES.NOME_VENDEDOR, LIVROS.NOME_LIVRO
FROM VENDAS LEFT JOIN VENDEDORES 
ON VENDAS.ID_VENDEDOR = VENDEDORES.ID_VENDEDOR
INNER JOIN LIVROS
ON VENDAS.ID_LIVRO = LIVROS.ID_LIVRO;

# Exiba a quantidade total de cada livro disponível no estoque junto com o nome do livro.
SELECT LIVROS.NOME_LIVRO, ESTOQUE.QTD_ESTOQUE
FROM ESTOQUE INNER JOIN LIVROS
ON ESTOQUE.ID_LIVRO = LIVROS.ID_LIVRO;

# Quantas vendas foram realizadas no total?
SELECT COUNT(ID_PEDIDO) FROM VENDAS;

# Qual foi a quantidade total de livros vendidos?
SELECT SUM(QTD_VENDIDA) FROM VENDAS;

# Qual é o valor total arrecadado com todas as vendas?
SELECT LIVROS.NOME_LIVRO, MAX(VENDAS.QTD_VENDIDA) AS QUANTIDADE_VENDIDA
FROM LIVROS INNER JOIN VENDAS
ON LIVROS.ID_LIVRO = VENDAS.ID_LIVRO;

# Mostre a quantidade de livros vendidos por cada vendedor.