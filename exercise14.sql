CREATE DATABASE escola;
USE escola;

CREATE TABLE turma(
	id INT NOT NULL AUTO_INCREMENT,
	turma VARCHAR(10) NOT NULL,
	PRIMARY KEY (id)
);

-- insere dados na tabela
INSERT INTO turma (id, turma) VALUES (1, 'DS1');

-- mostra todas as informações da tabela
SELECT * FROM turma;

INSERT INTO turma (turma,id) VALUES ('DS2', 2);
INSERT INTO turma VALUES (3, 'DS3');
INSERT INTO turma (turma) VALUES ('RH1');
INSERT INTO turma (id, turma) VALUES (NULL, 'RH2');
INSERT INTO turma (id, turma) VALUES (NULL, 'RH3');
INSERT INTO turma (turma) VALUES ('AN1'),('AN2'),('AN3');
INSERT INTO turma (turma) VALUES ('I1'), ('I2'), ('I3');

-- apaga uma tabela
DROP TABLE turma;

SHOW TABLES;
