CREATE DATABASE empresa;
USE empresa;

-- a)
SELECT * FROM funcionario where nascimento NOT LIKE '1975%';
SELECT * FROM funcionario WHERE YEAR(nascimento) != 1975;

-- b)
SELECT * FROM funcionario WHERE nome LIKE '%em%';

-- c)
SELECT DISTINCT funcao FROM funcionario;

-- d)
SELECT nome FROM funcionario AS f 
INNER JOIN departamento AS d ON d.codDepartamento = f.codDepto
WHERE funcao = 'segurança' AND d.nome = 'saneamento';

-- e)
SELECT nome FROM funcionario f
INNER JOIN departamento d ON d.codDepartamento = f.codDepto
WHERE d.nome = 'RH';

-- f)
SELECT f.nome, d.nomefrom funcionario f
INNER JOIN departamento d ON d.codDepartamento = f.codDepto
WHERE salario BETWEEN 500 AND 1500;

-- g)
SELECT * FROM funcionario f
INNER JOIN departamento d ON d.codDepto = f.codDepartamento
WHERE d.nome = 'TI' AND salario > 2000;