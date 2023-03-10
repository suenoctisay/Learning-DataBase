CREATE DATABASE vendas2021_3;
USE vendas2021_3;

-- verificar a estrutura da tabela
DESC cliente;

-- insert de clientes
INSERT INTO cliente VALUES ('123456789', 'João'), ('223456789', 'Maria'), ('333456789', 'Bruxa');
INSERT INTO cliente VALUES ('123', 'Sirius'), ('456', 'Remus'), ('789', 'James');
SELECT * FROM cliente;

-- insert de endereços
INSERT INTO endereco VALUES ('123', 1, 'R: Patinhos, nº12, Largo Grimmauld');
INSERT INTO endereco VALUES ('456', 2, 'R: Patinhos, nº12, Largo Grimmauld');
INSERT INTO endereco VALUES ('789', 3, 'R: Gatinhos, nº69, Grodric Hallows');
SELECT * FROM endereco;

-- insert de notas fiscais
DESC notafiscal;
INSERT INTO notafiscal VALUES (1, '123', '2021-09-23', 7000.00), (2, '456', '2021-09-23', 250.00), (3, '789', '2021-09-23', 5200.50);
SELECT * FROM notafiscal;

-- insert produto
DESC produto;
INSERT INTO produto VALUES (1, 'kit mata-aula', 56.00, 200), (2, 'moeda mágica', 25.00, 350), (3, 'pena mágica', 15.00, 60);
SELECT * FROM produto;

-- insert item
DESC item;
INSERT INTO item VALUES (1, 1, 1, 1, 1, 56.00), (2, 2, 1, 2, 2, 50.00);
SELECT * FROM item;

