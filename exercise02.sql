CREATE DATABASE ML;
USE ML;

CREATE TABLE cliente(
	codcliente INT PRIMARY KEY,
	nome VARCHAR(50),
	STATUS CHAR(5),
	limite_credito DECIMAL(7,2),
	rg VARCHAR(15),
	cpf VARCHAR(11),
	rua VARCHAR(50),
	numero VARCHAR(5),
	bairro VARCHAR(25),
	complemento VARCHAR(25),
	cidade VARCHAR(20),
	UF CHAR(2),
	CEP CHAR(8)
);

CREATE TABLE telefone(
	codtelefone INT PRIMARY KEY,
	codcliente INT,
	FOREIGN KEY (codcliente) REFERENCES cliente(codcliente),
	tipo VARCHAR(10),
	DD CHAR(2),
	numero INT
);

CREATE TABLE pedido(
	codpedido INT PRIMARY KEY,
	DATA DATE,
	codcliente INT,
	FOREIGN KEY (codcliente) REFERENCES cliente(codcliente)
);

CREATE TABLE categoria (
	codcategoria INT PRIMARY KEY,
	nome VARCHAR(20)
);

CREATE TABLE produto (
	codproduto INT PRIMARY KEY,
	nome VARCHAR(20),
	preco DECIMAL(7,2),
	codcategoria INT,
	FOREIGN KEY (codcategoria) REFERENCES categoria(codcategoria)
);

CREATE TABLE item(
	coditempedido INT PRIMARY KEY, 
	qtdpedido INT,
	codproduto INT,
	codpedido INT,
	FOREIGN KEY (codproduto) REFERENCES produto(codproduto),
	FOREIGN KEY (codpedido) REFERENCES pedido(codpedido)
);

SHOW TABLES;