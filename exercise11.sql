CREATE DATABASE vendas2021;
USE vendas2021;

CREATE TABLE cliente(
	cpf VARCHAR(11) PRIMARY KEY,
	nome VARCHAR(30)
);

CREATE TABLE produto(
	codproduto INT PRIMARY KEY,
	nome VARCHAR(20),
	valorunit DECIMAL(5,2),
	qtdestoque INT
);

CREATE TABLE endereco(
	cpf VARCHAR(11),
	codendereco INT,
	endereco VARCHAR(50),
	PRIMARY KEY (cpf, codendereco),
	FOREIGN KEY (cpf) REFERENCES cliente(cpf)
);

CREATE TABLE notafiscal(
	codnf INT PRIMARY KEY,
	cpf VARCHAR(11),
	data DATE,
	valortotal DECIMAL(7,2),
	FOREIGN KEY (cpf) REFERENCES cliente(cpf)
);

CREATE TABLE item(
	coditem INT,
	codproduto INT,
	codnf INT,
	qtdvenda INT,
	numero INT,
	valortotal DECIMAL(7,2),
	PRIMARY KEY (coditem, numero),
	FOREIGN KEY (codnf) REFERENCES notafiscal(codnf),
	FOREIGN KEY (codproduto) REFERENCES produto(codproduto)
);

SHOW TABLES;
