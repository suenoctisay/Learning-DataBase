CREATE DATABASE MC;
USE MC;

CREATE TABLE cliente(
	codcliente INT PRIMARY KEY,
	nome VARCHAR(50),
	cpf VARCHAR(11),
	STATUS VARCHAR(10),
	limite_credito DECIMAL(7,2),
	rua VARCHAR(50),
	numero VARCHAR(5),
	bairro VARCHAR(25),
	complemento VARCHAR(15),
	cidade VARCHAR(15),
	CEP CHAR(8),
	UF CHAR(2)
);

SHOW TABLES;

CREATE TABLE telefone(
	codtelefone INT PRIMARY KEY,
	codcliente INT,
	FOREIGN KEY (codcliente) REFERENCES cliente(codcliente),
	tipo VARCHAR(15),
	DD CHAR(2),
	numero INT
);

SHOW TABLES;

CREATE TABLE pedido(
	codpedido INT PRIMARY KEY,
	codcliente INT,
	FOREIGN KEY (codcliente) REFERENCES cliente(codcliente),
	DATA DATE,
	numero INT,
	valortotal DECIMAL(7,2)
);

SHOW TABLES;

CREATE TABLE produto(
	codproduto INT PRIMARY KEY,
	nome VARCHAR(20),
	categoria VARCHAR(15),
	preco DECIMAL (5,2),
	qtd INT
);

SHOW TABLES;

CREATE TABLE produto_pedido(
	codprodutopedido INT PRIMARY KEY,
	codproduto INT,
	codpedido INT,
	FOREIGN KEY (codproduto) REFERENCES produto(codproduto),
	FOREIGN KEY (codpedido) REFERENCES pedido(codpedido)
);

SHOW TABLES;
