CREATE DATABASE aula_12_11;
USE aula_12_11;

CREATE TABLE funcionario(
	codFuncionario INT PRIMARY KEY, 
	nome VARCHAR(30),
	funcao VARCHAR(15),
	nascimento DATE,
	salario INT
);

CREATE TABLE dependente(
	codDepartamento INT PRIMARY KEY,
	nome VARCHAR(30),
	nascimento DATE,
	codFuncionario INT,
	FOREIGN KEY (codFuncionario) REFERENCES funcionario(codFuncionario)	
);

INSERT INTO funcionario VALUES (1, "Maria José de Andrade", "Analista de Sistema", "1975-02-09", 2699.85),
(2, "Ângela Aparecida", "Segurança", "1969-04-10", 9000.85),
(3, "Miguel dos Santos", "Analista de Sistema", "1975-02-09", 2699.85),
(4, "Andre Leite", "Desenvolvedor", "1990-02-09", 3500.85),
(5, "André Moraes", "Almoxarife", "1970-04-09", 1499.85),
(6, "João Antonio Mendes", "Estágiario", "2005-02-09", 680),
(7, "Paulo Manuel Li", "Segurança", "1975-04-09", 2699.85);

ALTER TABLE funcionario MODIFY funcao VARCHAR(25);

INSERT INTO dependente VALUES (1, "Joãozinho", "1996-05-07", 1),
(2, "Mariazinha", "2005-05-07", 2),
(3, "Paulinho", "2003-08-07", 4),
(4, "Mirian", "1995-05-08", 2),
(5, "Pedrinho", "1996-05-07", 5),
(6, "Leandrinho", "1990-05-07", 3);

-- a)
SELECT * FROM funcionario WHERE YEAR(nascimento) != 1975;

-- b)
SELECT * FROM funcionario WHERE nome LIKE '%en%';

-- c)
SELECT nome FROM funcionario WHERE funcao = 'segurança';

-- d)
SELECT d.nome FROM dependente AS d
INNER JOIN funcionario AS f ON f.codFuncionario = d.codDepartamento
WHERE f.nome = 'maria josé andrade';

-- e)
SELECT d.nome FROM dependente AS d
INNER JOIN funcionario AS f ON f.codFuncionario = d.codDepartamento
WHERE f.nome = 'ângela aparecida' OR f.nome = 'miguel dos santos';

-- f)
SELECT nome, nascimento FROM dependente WHERE YEAR(nascimento) BETWEEN 1996 AND 1998;

-- g)
ALTER TABLE dependente ADD idade INT;

-- h)
UPDATE dependente SET idade = 2021-YEAR(nascimento);
SELECT * FROM dependente;

-- i)


-- j)


-- k)


-- l)


-- m)


-- n)


-- o)


-- p)


-- q) 
