CREATE DATABASE vendas2021_2;
USE vendas2021_2;

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

-- Alterar o tamanho do campo valortotal da tabela item para decimal(5,2)
ALTER TABLE item CHANGE valortotal valortotal DECIMAL(5,2);
DESC item;


-- Adicionar os campos: data_nasci date e rg varchar(15)
ALTER TABLE cliente ADD data_nasci DATE;
ALTER TABLE cliente ADD rg VARCHAR(15);
DESC cliente;

-- Remover o campo data da tabela notafiscal
ALTER TABLE notafiscal DROP DATA;
DESC notafiscal;

-- Alterar o nome do campo valortotal da tabela item para valor_item
ALTER TABLE item CHANGE valortotal valor_item DECIMAL(5,2);
DESC item;

-- Alterar o nome do campo qtdestoque da tabela produto para qtd
ALTER TABLE produto CHANGE qtdestoque qtd INT;
DESC produto;
