CREATE DATABASE hotel;
USE hotel;

CREATE TABLE cliente(
	codcliente INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	rg VARCHAR(15) NOT NULL,
	cpf VARCHAR(11) NOT NULL,
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

CREATE TABLE quarto(
	codquarto INT PRIMARY KEY,
	numero INT,
	andar VARCHAR(2),
	qtdleitos INT 
);

CREATE TABLE hospedagem(
	codhospedagem INT PRIMARY KEY,
	checkin DATE,
	chekout DATE,
	codquarto INT,
	FOREIGN KEY (codquarto) REFERENCES quarto(codquarto)
);

CREATE TABLE cliente_hospedagem (
	codclientehospedagem INT PRIMARY KEY,
	codcliente INT,
	codhospedagem INT,
	FOREIGN KEY (codcliente) REFERENCES cliente(codcliente),
	FOREIGN KEY (codhospedagem) REFERENCES hospedagem(codhospedagem)
);

SHOW TABLES;

CREATE TABLE consumo(
	codconsumo INT PRIMARY KEY,
	produto VARCHAR(20),
	qtdconsumida INT,
	valorconsumo DECIMAL(5,2),
	codhospedagem INT,
	FOREIGN KEY (codhospedagem) REFERENCES hospedagem(codhospedagem)
);

SHOW TABLES;

