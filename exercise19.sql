CREATE DATABASE venda2008;
USE venda2008;

CREATE TABLE venda(
	IDvenda INT PRIMARY KEY,
	vendedor VARCHAR(25),
	DATA DATE,
	valor DECIMAL(7,2)
);

INSERT INTO venda VALUES (01, "Fulano", "2008-04-14", 600),
								 (02, "Fulano", "2008-04-16", 1000),
								 (03, "Fulano", "2008-04-18", 800),
								 (04, "Beltrano", "2008-04-15", 1200),
								 (05, "Beltrano", "2008-04-17", 1600),
								 (06, "Cicrano", "2008-04-14", 1000),
								 (07, "Cicrano", "2008-04-15", 1200),
								 (08, "Cicrano", "2008-04-16", 1400),
								 (09, "Cicrano", "2008-04-17", 1600),
								 (10, "Cicrano", "2008-04-18", 1800);

SELECT * FROM venda;


SELECT SUM(valor) AS soma FROM venda;
SELECT vendedor, SUM(valor) FROM venda GROUP BY vendedor;
SELECT vendedor, COUNT(*) FROM venda GROUP BY vendedor;
SELECT MIN(valor) menorVenda MAX(valor) maiorVenda FROM venda GROUP BY vendedor;
SELECT DATA, AVG(valor) FROM venda WHERE DATA IN ("2008-04-150", "2008-04-15") GROUP BY DATA;
SELECT DATA, SUM(valor) FROM venda GROUP BY DATA HAVING SUM(valor) > 3000;
SELECT DATA, AVG(valor) FROM venda WHERE DATA BETWEEN "2008-04-14" AND "2008-04-16" GROUP BY DATA HAVING AVG(valor) < 1000;
SELECT vendedor, COUNT(*) FROM venda WHERE DATA IN ("2008-04-14", "2008-04-16", "2008-04-18") GROUP BY vendedor HAVING qtd > 2;
