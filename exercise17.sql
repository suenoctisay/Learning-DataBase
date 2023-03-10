CREATE DATABASE loja_carro;
USE loja_carro;

CREATE TABLE marca(
	codmarca INT PRIMARY KEY AUTO_INCREMENT,
	id VARCHAR(20),
	nome VARCHAR(25)
);


CREATE TABLE carro (
	codcarro INT PRIMARY KEY AUTO_INCREMENT,
	marca VARCHAR(20),
	modelo VARCHAR(25),
	ano INT,
	cor VARCHAR(10)
); 

SHOW TABLES;

INSERT INTO marca VALUES (1, 'VW', 'Volkswagen');
INSERT INTO marca (id, nome) VALUES ('Ford', 'Ford'), ('GM', 'General Motors'), ('Fiat', 'Fiat'), ('Renault', 'Renault'), ('MB', 'Mercedes Bens');
DESC marca;
SELECT * FROM marca;


INSERT INTO carro VALUES (1, 'VW', 'Fox', 2005, 'preto');
INSERT INTO carro (marca, modelo, ano, cor) VALUES ('VW', 'Fox', 2008, 'preto'),
																	('Ford', 'Ecosport', 2009, 'verde'),
																	('Ford', 'KA', 2008, 'prata'),
																	('Fiat', 'Punto', 2008, 'branco'),
																	('Fiat', 'Uno', 2007, 'preto'),
																	('Fiat', 'Stilo', 2010, 'amarelo'),
																	('Fiat', 'Uno', 2005, 'prata'),
																	('Fiat', 'Stilo', 2008, 'prata'),
																	('Fiat', 'Uno', 2009, 'braco'),
																	('Peugeot', '207', 2010, 'branco'),
																	('Peugeot', '207', 2010, 'azul'),
																	('Peugeot', '207', 2007, 'verde'),
																	('Chrysler', '300c', 2008, 'braco');

DESC carro;
SELECT * FROM carro;


