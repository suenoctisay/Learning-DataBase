-- 1
CREATE DATABASE loja;
USE loja;

-- 2 
CREATE TABLE cliente(
	codcliente INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
	nome VARCHAR(20) NOT NULL,
	sobrenome VARCHAR(20) NULL,
	DATA DATE NOT NULL, 
	idade INT NULL,
	cpf INT NOT NULL,
	rg VARCHAR(15) NOT NULL,
	sexo VARCHAR(10) NOT NULL
);

SHOW TABLES;

-- 3
ALTER TABLE cliente ADD salario DECIMAL(7,2);

-- 4 
ALTER TABLE cliente CHANGE DATA data_nascimento DATE;
DESC cliente;

-- 5
INSERT INTO cliente VALUES (1, 'Kazuha', 'Kaedahara', '1998-10-29', 23, 123456789, '987654321', 'M', 540.00), (2, 'Hu', 'Tao', '1997-07-15', 24, 321456789, '789654321', 'F', 1500.00);
SELECT * FROM cliente;

INSERT INTO cliente (nome, data_nascimento, idade, cpf, rg, sexo, salario) VALUES ('Chongyun', '2000-07-07', 21, 987456321, '147852369', 'M', 2300.00), ('Xinqiu', '2000-10-09', 21, 963258741, '147236589', 'M', 2300.00), ('Qiqi', '2014-03-03', 07, 589632147, '587412369', 'F', 540.00);
SELECT * FROM cliente;

INSERT INTO cliente (nome, data_nascimento, cpf, rg, sexo, salario) VALUES ('Venti', '0000-06-16', 999874561, '444569875', 'M', 2000.00), ('Albedo', '0000-09-13', 666987123, '777456321', 'M', 25000.00), ('Xiao', '0000-04-17', 000123456, '111456789', 'M', 540.00);
SELECT * FROM cliente;

-- 6
DESC cliente;

-- 7 
SELECT codcliente, nome, idade FROM cliente;

-- 8
SELECT idade, salario FROM cliente WHERE nome LIKE 'Kazuha';

-- 9
ALTER TABLE cliente DROP idade;
DESC cliente;
SELECT * FROM cliente;

-- 10
ALTER TABLE cliente CHANGE cpf cpf VARCHAR(11);
SELECT * FROM cliente;

-- 11 
SELECT * FROM cliente WHERE salario>1000 ORDER BY salario DESC;

-- 12
ALTER TABLE cliente ADD bairro VARCHAR(20) NOT NULL;
DESC cliente;

-- 13 
INSERT INTO cliente (nome, data_nascimento, cpf, rg, sexo, salario, bairro) VALUES ('Ningguang', '1994-08-26', '657812589', '013156846', 'F', 50000.00, 'Liyue');
SELECT * FROM cliente;

-- 14
ALTER TABLE cliente CHANGE sexo sexo CHAR(1);
DESC cliente;

-- 15
SELECT * FROM cliente;
UPDATE cliente SET bairro = 'Mondstadt' WHERE nome = 'Venti';
UPDATE cliente SET bairro = 'Inazuma' WHERE nome = 'Kazuha';
UPDATE cliente SET bairro = 'Mondstadt' WHERE nome = 'Albedo';
UPDATE cliente SET bairro = 'Liyue' WHERE nome = 'Xiao';
UPDATE cliente SET bairro = 'Liyue' WHERE nome = 'Hu';
UPDATE cliente SET bairro = 'Liyue' WHERE nome = 'Chongyun';
UPDATE cliente SET bairro = 'Liyue' WHERE nome = 'Xinqiu';
UPDATE cliente SET bairro = 'Liyue' WHERE nome = 'Qiqi';

-- 16 
SELECT DISTINCT bairro FROM cliente;

-- 17 
SELECT nome, sobrenome, cpf FROM cliente WHERE nome LIKE '%e%';

-- 18 
SELECT MAX(salario) FROM cliente;

-- 19 
SELECT MIN(salario) FROM cliente;

-- 20
SELECT * FROM cliente WHERE nome LIKE '%e%';


