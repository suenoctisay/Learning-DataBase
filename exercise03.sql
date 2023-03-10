CREATE DATABASE geminialidadesweasley;
USE geminialidadesweasley;

CREATE TABLE cliente(
	codcliente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome VARCHAR(50),
	cpf VARCHAR(11),
	rg VARCHAR(15)
);

CREATE TABLE endereco(
	codendereco INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	codcliente INT NOT NULL,
	FOREIGN KEY (codcliente) REFERENCES cliente(codcliente),
	rua VARCHAR(50),
	numero VARCHAR(5),
	bairro VARCHAR(25),
	complemento VARCHAR(25),
	cidade VARCHAR(20),
	UF CHAR(2),
	CEP CHAR(8)
);

CREATE TABLE telefone(
	codtelefone INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	codcliente INT NOT NULL,
	FOREIGN KEY (codcliente) REFERENCES cliente(codcliente),
	tipo VARCHAR(10),
	DD CHAR(2),
	numero INT
);

CREATE TABLE produto(
	codproduto INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome VARCHAR(20),
	tipo VARCHAR(15),
	quantidade INT,
	valor DECIMAL(5,2)
);

CREATE TABLE compra(
	codcompra INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	codcliente INT NOT NULL,
	FOREIGN KEY (codcliente) REFERENCES cliente(codcliente),
	valortotal DECIMAL(7,2),
	DATA DATE
);

CREATE TABLE produtocompra(
	codprodutocompra INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	codproduto INT,
	codcompra INT,
	FOREIGN KEY (codproduto) REFERENCES produto(codproduto),
	FOREIGN KEY (codcompra) REFERENCES compra(codcompra),
	qtdvanda INT,
	precovenda DECIMAL(5,2)
);

SHOW TABLES;

-- insert cliente
DESC cliente;
INSERT INTO cliente VALUES (1, 'PadFoot', '123', '987'), (2, 'Prongs', '456', '654'), (3, 'Moony', '789', '321'), (4, 'Harry', '123456789', '987654321'), (5, 'Draco', '987654321', '123456789');
SELECT * FROM cliente;

-- insert endereco
DESC endereco;
INSERT INTO endereco (codendereco, codcliente, rua, numero) VALUES (1, 1, 'Largo Grimauld', '12'), (2, 2, 'Largo Grimauld', '12'), (3, 3, 'Godrics Hollow', '45');
INSERT INTO endereco VALUES (4, 4, 'Mansão Malfoy', '79', 'não sei', 'sem complemento', 'não sei', 'UK', '000'), (5, 5, 'Mansão Malfoy', '79', 'não sei', 'sem complemento', 'não sei', 'UK', '000');
SELECT * FROM endereco;

-- insert telefone
DESC telefone;
INSERT INTO telefone VALUES (1, 1, 'pessoal', '31', '123456789'), (2, 2, 'pessoal', '31', '123456789'), (3, 3, 'pessoal', '31', '123456789'), (4, 4, 'pessoal', '31', '123456789'), (5, 5, 'pessoal', '31', '123456789');
SELECT * FROM telefone;

-- insert produto 
DESC produto;
INSERT INTO produto VALUES (1, 'kit mata-aula', 'escola', 100, 7),
	(2, 'moeda mágica', 'escola', 250, 1),
	(3, 'pena auto-escrita', 'escola', 250, 3),
	(4, 'bomba fedorenta', 'diversão', 67, 5),
	(5, 'mini-pufs', 'diversão', 92, 5);
SELECT * FROM produto;

-- insert compra 
DESC compra;
INSERT INTO compra VALUES (1, 1, 700, '2021-09-23');
INSERT INTO compra VALUES (2, 2, 2500, '2021-09-23'), (3, 1, 500, '2021-09-09'), (4, 1, 250, '2021-09-05'), (5, 1, 620, '2021-09-03');
SELECT * FROM compra;

-- insert produtocompra
DESC produtocompra;
INSERT INTO produtocompra VALUES (1, 1, 1, 100, 7), (2, 2, 2, 25, 1), (3, 1, 3, 30, 1), (4, 1, 4, 25, 7), (5, 1, 5, 96, 5);
SELECT * FROM produtocompra;

SHOW TABLES;