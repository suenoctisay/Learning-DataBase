-- querida professora, antes que veja meu código, eu já quero orientá-la que não faço a mínima ideia do que fiz, então por favor, me dê um crédito 

CREATE DATABASE parque_computacional;
USE parque_computacional;

CREATE TABLE software(
	IDsoftware INT PRIMARY KEY AUTO_INCREMENT,
	produto VARCHAR(25),
	hard_disk VARCHAR(10),
	memoria_ram VARCHAR(10)
);

CREATE TABLE maquina(
	IDmaquina INT PRIMARY KEY AUTO_INCREMENT,
	tipo VARCHAR(25),
	velocidade VARCHAR(10),
	hard_disk VARCHAR(10),
	placa_rede VARCHAR(10),
	memoria_ram VARCHAR(10)
);

CREATE TABLE usuario(
	IDusuario INT PRIMARY KEY AUTO_INCREMENT,
	senha VARCHAR(15),
	nome VARCHAR(40),
	ramal CHAR(4),
	especialidade VARCHAR(20)
);

-- não lembro como fazer chave composta :)
CREATE TABLE maquina_software(
	IDmaquina INT AUTO_INCREMENT,
	IDsoftware INT AUTO_INCREMENT,
	FOREIGN KEY (IDmaquina) REFERENCES maquina(IDmaquina),
	FOREIGN KEY (IDsoftware) REFERENCES software(IDsoftware)
);

-- não lembro como fazer chave composta :)
CREATE TABLE maquina_usuario(
	IDmaquina INT AUTO_INCREMENT,
	IDusuario INT AUTO_INCREMENT,
	FOREIGN KEY (IDmaquina) REFERENCES maquina(IDmaquina),
	FOREIGN KEY (IDusuario) REFERENCES usuario(IDusuario)
);


-- 1
SELECT * FROM usuario WHERE especialidade = 'técnico';

-- 2
SELECT tipo, velocidade FROM maquina;

-- 3
SELECT tipo, velocidade FROM maquina WHERE tipo = 'Core II' OR tipo = 'Pentium';

-- 4
SELECT IDmaquina, tipo, placa_rede FROM maquina WHERE placa_rede < '10 Mb/s';

-- 5 fiz certo? não sei, só você me dirá... isso serve para todos os inner joins
SELECT nome FROM usuario AS u
INNER JOIN maquina_usuario AS mu ON u.IDusuario = mu.IDusuario
INNER JOIN maquina AS m ON m.IDmaquina = mu.IDmaquina
WHERE tipo = 'Core III' OR 'Core V';

-- 6 
SELECT IDmaquina FROM maquina m
INNER JOIN maquina_software AS ms ON m.IDmaquina = ms.IDmaquina
INNER JOIN software AS s ON s.IDsoftware = ms.IDsoftware
WHERE produto = 'C++';

-- 7 
SELECT IDmaquina, memoria_ram FROM maquina m
INNER JOIN maquina_software ms ON m.IDmaquina = ms.IDmaquina
INNER JOIN software s ON s.IDsoftware = ms.IDsoftware
SELECT produto, s.memoria_ram WHERE s.momoria_ram > m.memoria_ram;

-- 8 
SELECT nome FROM usuario u
INNER JOIN maquina_usuario mu ON u.IDusuario = mu.IDusuario
INNER JOIN maquina m ON m.IDmaquina = mu.IDmaquina
SELECT velocidade FROM maquina;

-- 9 
SELECT nome, IDusuario FROM usuario WHERE IDusuario < IDusuario WHERE nome = 'Maria';

-- 10 também não sei se fiz certo 
SELECT COUNT IDmaquina FROM maquina WHERE velocidade = '2.4 Ghz';

-- 11 nem esse
SELECT COUNT IDusuario FROM usuario;

-- 12 - não sei como terminar :)
SELECT COUNT IDusuario FROM usuario u 
INNER JOIN maquina_usuario mu ON u.IDusuario = mu.IDusuario
INNER JOIN maquina m ON m.IDmaquina = mu.IDmaquina
WHERE 

-- 13
SELECT COUNT IDusuario FROM usuario u 
INNER JOIN maquina_usuario mu ON u.IDusuario = mu.IDusuario
INNER JOIN maquina m ON m.IDmaquina = mu.IDmaquina
WHERE tipo = 'Dual Core';

-- 14
SELECT COUNT hard_disk FROM software WHERE produto = 'Word' AND produto = 'Lotus';

-- 15 essa eu sinto que você queria mesmo ver a gente chorar kkkkkk(cry)
SELECT COUNT hard_disk FROM maquina m -- desisti de pensar, desculpa, professora

-- 16 essa aqui eu só fui na fé
SELECT AVG hard_disk FROM software ORDER BY produto;

-- 17 
SELECT COUNT tipo FROM maquina;

-- 18
SELECT COUNT produto FROM software WHERE hard_disk BETWEEN '90MB' AND '250MB';

-- 19
SELECT IDsoftware, nome FROM software WHERE nome LIKE '%o%';

-- 20 daqui em diante (só até a 22 e a 28), eu desisti


-- 21 


-- 22 


-- 23 
SELECT IDusuario, nome FROM usuario WHERE especialidade = NULL; 

-- 24
SELECT IDusuario, nome FROM usuario BY nome;

-- 25 já foi criado?? essa é estranha, meus neurônios não entenderam

-- 26
ALTER TABLE software DROP WHERE hard_disk < '200MB';

-- 27
INSERT INTO software VALUES (202, 'video light', '300MB', '50MB');

-- 28


-- eu vou ganhar pelo menos um R? eu tentei fazer pelo menos, você tem que contar isso :)