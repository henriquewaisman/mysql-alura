-- AI GENERATED
INSERT INTO LIVROS (ID_LIVRO, NOME_LIVRO, AUTORIA, EDITORA, CATEGORIA, PRECO) VALUES
(1, 'Paraíso', 'Dante Alighieri', 'Editora 34', 'Poesia', 69.90),
(2, 'A Volta ao Mundo em 80 Dias', 'Júlio Verne', 'Principis', 'Aventura', 21.99),
(3, 'O Cortiço', 'Aluísio de Azevedo', 'Panda Books', 'Romance', 47.80),
(4, 'Dom Casmurro', 'Machado de Assis', 'Via Leitura', 'Romance', 19.90),
(5, 'Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Antofágica', 'Romance', 45.00),
(6, 'Quincas Borba', 'Machado de Assis', 'L&PM Editores', 'Romance', 48.50),
(7, 'Ícaro', 'Gabriel Pedrosa', 'Ateliê', 'Poesia', 36.00),
(8, 'Os Lusíadas', 'Luís Vaz de Camões', 'Montecristo', 'Poesia', 18.79),
(9, 'Outros Jeitos de Usar a Boca', 'Rupi Kaur', 'Planeta', 'Poesia', 34.80);

INSERT INTO ESTOQUE (ID_LIVRO, QTD_ESTOQUE) VALUES
(1, 50),
(2, 30),
(3, 40),
(4, 25),
(5, 35),
(6, 20),
(7, 15),
(8, 28),
(9, 22);

INSERT INTO VENDEDORES (ID_VENDEDOR, NOME_VENDEDOR) VALUES
(1, 'João Silva'),
(2, 'Maria Souza'),
(3, 'Carlos Oliveira'),
(4, 'Ana Lima'),
(5, 'Fernando Santos');

INSERT INTO VENDAS (ID_PEDIDO, ID_VENDEDOR, ID_LIVRO, QTD_VENDIDA, DATA_VENDA) VALUES
(1, 1, 3, 2, '2025-03-01'),
(2, 2, 5, 1, '2025-03-02'),
(3, 3, 2, 4, '2025-03-03'),
(4, 4, 8, 3, '2025-03-04'),
(5, 5, 6, 1, '2025-03-05'),
(6, 1, 9, 2, '2025-03-06'),
(7, 2, 1, 1, '2025-03-07'),
(8, 3, 4, 3, '2025-03-08'),
(9, 4, 7, 2, '2025-03-09'),
(10, 5, 3, 1, '2025-03-10');
