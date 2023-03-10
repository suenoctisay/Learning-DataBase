CREATE DATABASE exercicioBD;
USE exercicioBD;

CREATE TABLE CONTA(
	IDconta INT(11) PRIMARY KEY NOT NULL,
	NomeCliente VARCHAR(50), 
	Saldo DECIMAL(10,2),
	TipoConta ENUM('C','P')
);

CREATE TABLE TRANSFERENCIA(
	IDtransferencia INT(11) PRIMARY KEY,
	IDorigem INT(11),
	IDdestino INT(11),
	Valor DECIMAL(10,2),
	FOREIGN KEY(IDorigem) REFERENCES CONTA(IDconta),
	FOREIGN KEY(IDdestino) REFERENCES CONTA(IDconta)
);


INSERT INTO CONTA VALUES (1, "Harry Potter", 100.00, "C");
INSERT INTO CONTA VALUES (2, "Ron Weasley", 1000.00, "P");
INSERT INTO CONTA VALUES (3, "Ginny Weasley", 5000.00, "C");
INSERT INTO CONTA VALUES (4, "Hermione Granger", 10000.00, "P");
INSERT INTO CONTA VALUES (5, "Draco Malfoy", 100000.00, "C");
INSERT INTO CONTA VALUES (6, "Fred Weasley", 10000.00, "P");
INSERT INTO CONTA VALUES (7, "George Weasley", 100.000, "C");
INSERT INTO CONTA VALUES (8, "Blaise Zabini", 5000.00, "P");
INSERT INTO CONTA VALUES (9, "Theodore Nott", 2000.00, "C");
INSERT INTO CONTA VALUES (10, "Tom Riddle", 10.00, "P");



-- 1a
DELIMITER $$

CREATE PROCEDURE Tipo_Conta(IN IDconta INT)
BEGIN
    SELECT NomeCliente, Saldo, (TipoConta = 'C') AS Corrente, (TipoConta = 'P') AS Poupança
	FROM CONTA;
END $$

DELIMITER ;

CALL Tipo_Conta(0);


-- 1b
DELIMITER $$

CREATE PROCEDURE Tipo_Conta(INOUT IDConta INT)
BEGIN
	SELECT Conta.IDConta, Conta.NomeCliente, IF(TipoConta = 'C',"Corrente","Poupança") AS Tipo
	FROM Conta WHERE Conta.IDConta = IDConta;
END $$

DELIMITER ; 

SET @conta =2 ;
CALL Tipo_Conta(@conta);


-- 2
DELIMITER $$

CREATE PROCEDURE Transferencia(INOUT Valor INT,INOUT IDorigem INT,INOUT IDdestino INT)
BEGIN
	DECLARE Saldo1 INT DEFAULT 0;
	
	UPDATE Conta SET Saldo = Saldo-Valor WHERE IDConta = IDorigem;
	SELECT Saldo INTO Saldo1 FROM Conta WHERE IDConta = IDorigem;
	
	IF (Valor > Saldo1)
	THEN
		SELECT CONCAT("Saldo insuficiente para transferência") AS Mensagem;
	
	ELSE
		INSERT INTO transferencia (idContaOrigem, idContaDestino, valor) VALUES (idOrigem, idDestino, valor);
	END IF;
END $$

DELIMITER ;

SET @money = 500.00;
SET @ContaOrigem = 1;
SET @ContaDestino = 2;

CALL Transferencia(@money, @ContaOrigem, @ContaDestino);
SELECT @money AS Valor, @ContaOrigem AS Origem, @ContaDestino AS Destino;





-- 3
DELIMITER $$

CREATE PROCEDURE Saque(INOUT Valor INT, INOUT Conta INT)
BEGIN
	DECLARE Saldo1 INT DEFAULT 0;
	SELECT Saldo INTO Saldo1 FROM Conta WHERE IDConta = Conta;
	
	IF (Valor > Saldo1)
	THEN
		SELECT CONCAT("Saldo insuficiente para saque") AS Mensagem;
	
	ELSE
		
		UPDATE Conta SET Saldo = Saldo-Valor WHERE IDconta = Conta;
	END IF;
END $$

DELIMITER ;

SET @money = 400.00;
SET @conta = 8;

CALL Saque(@money, @conta);
SELECT @money AS Valor, @conta AS Conta;





