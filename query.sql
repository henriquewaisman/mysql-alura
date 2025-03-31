-- Liste todos os livros cadastrados no banco de dados.
SELECT NOME_LIVRO FROM LIVROS;

-- Mostre os nomes dos vendedores cadastrados.
SELECT NOME_VENDEDOR FROM VENDEDORES;

-- Exiba todas as vendas registradas.
SELECT * FROM VENDAS;

-- Liste os livros da categoria "Romance".
SELECT * FROM LIVROS WHERE CATEGORIA = "Romance";

-- Mostre as vendas realizadas pelo vendedor "Maria Souza".
SELECT VENDAS.ID_PEDIDO, VENDEDORES.NOME_VENDEDOR, VENDAS.ID_LIVRO, VENDAS.QTD_VENDIDA, VENDAS.DATA_VENDA
FROM VENDAS, VENDEDORES
WHERE (VENDAS.ID_VENDEDOR = VENDEDORES.ID_VENDEDOR AND VENDEDORES.NOME_VENDEDOR = "Maria Souza");

-- Exiba os livros cujo preço seja maior que R$ 40,00.
