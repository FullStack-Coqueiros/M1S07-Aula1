CREATE DATABASE AULA4
GO
USE AULA4
 


 CREATE TABLE CLIENTE (
	ID INT PRIMARY KEY IDENTITY(1,1),
	NOME VARCHAR(50)
 )

 CREATE TABLE TELEFONE (
 	ID INT PRIMARY KEY IDENTITY(1,1),
	ID_CLIENTE INT REFERENCES CLIENTE(ID),
	TELEFONE  VARCHAR(11)
 )


 INSERT INTO CLIENTE (NOME) VALUES ('dELSON')


 DECLARE @ID_CLIENTE INT 
 SET @ID_CLIENTE = SCOPE_IDENTITY()

 INSERT INTO TELEFONE (TELEFONE, ID_CLIENTE) VALUES ('987', @ID_CLIENTE)

 PRINT @ID_CLIENTE

 SELECT * FROM CLIENTE C 
JOIN TELEFONE T ON T.ID_CLIENTE = C.ID


--UPDATE CLIENTE 
--SET NOME = 'Delson'
--WHERE ID = 3