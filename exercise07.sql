-- FORMA 01
DECLARE 

@CELULAR VARCHAR(50) = '(19) 9 9199-58827'

BEGIN
DECLARE @RESULT VARCHAR(255)

SELECT @RESULT = REPLACE(REPLACE(REPLACE(REPLACE(@CELULAR,'(',''),')',''),' ',''),'-','') FROM DUAL

SELECT CASE WHEN LEN(@RESULT) <> 11 THEN 'NUMERO INVALIDO' ELSE @RESULT END AS CELULAR_FORMATADO;

END;





-- FORMA 02
CREATE FUNCTION FormataCelular(@telefone VARCHAR(11))

RETURNS VARCHAR(15)
AS
BEGIN
DECLARE @RESULT VARCHAR(15)
SELECT @RESULT= concat('(',substring(@telefone,1,2),') ',substring(@telefone,3,5),'-',substring(@telefone,8,2)) FROM DUAL

  RETURN @RESULT;
END;
GO

SELECT DBO.FormataCelular('11988997766') AS numeroFormatado FROM DUAL;




-- FORMA 03
CREATE FUNCTION FormataCelular(telefone CHAR(11))

RETURNS CHAR(15)
RETURN  concat('(',substring(telefone,1,2),') ',substring(telefone,3,5),'-',substring(telefone,8))

SELECT FormataCelular(11988997766) AS numeroFormatado;
