
--CRIA��O DO BANC DE DADOS 
CREATE DATABASE AULA1
USE  AULA1

--CRIA��O DA TABELA
CREATE TABLE ALUNO(
ID INT PRIMARY KEY, 
NOME VARCHAR(20),
CURSO VARCHAR(20)
)

ALTER TABLE ALUNO 
ADD ENDERECO VARCHAR(50)

--DROP TABLE ALUNO

--INSERIR DADOS
INSERT INTO ALUNO (ID, NOME, CURSO) VALUES (1, 'Vitor Lassen', 'An�lise de Sistema');
INSERT INTO ALUNO (CURSO, ID, NOME) VALUES ('An�lise de Sistema', 2, 'Willian ');
INSERT INTO ALUNO (CURSO, ID, NOME, ENDERECO) VALUES ('An�lise de Sistema', 3, 'Marcus ', '');
INSERT INTO ALUNO (CURSO, ID) VALUES ('An�lise de Sistema', 4);
INSERT INTO ALUNO VALUES (5, 'Raphael', 'Programa��o', 'Rua Girassois')


INSERT INTO ALUNO (ID, NOME, CURSO) VALUES (6, 'Maria', 'An�lise de Sistema'),
										   (7, 'Manuel', 'Letras')

INSERT INTO ALUNO (CURSO, ID, NOME) VALUES ('An�lise de Sistema', 8, 'Willian');

INSERT INTO ALUNO (CURSO, ID, NOME) VALUES ('Letras', 9, 'Willian ');

INSERT INTO ALUNO (CURSO, ID, NOME) VALUES ('Programa��o ', 11, 'Heloisa ');

--Select Simples  
SELECT ID,  CURSO, NOME, ENDERECO FROM ALUNO

SELECT * FROM ALUNO


--selects com where 
SELECT * FROM ALUNO
WHERE ID = 2

SELECT * FROM ALUNO
WHERE ID <> 2

SELECT * FROM ALUNO
WHERE NOME = 'willian' and CURSO = 'Letras' 

SELECT * FROM ALUNO
WHERE (NOME = 'Willian' and CURSO = 'Letras' ) or CURSO = 'Letras'


--Select com Like
SELECT * FROM ALUNO
WHERE NOME like '%n%' 

--Select  ordena��o
--ORDENA��O 
SELECT * FROM ALUNO
ORDER BY NOME ASC

SELECT * FROM ALUNO
ORDER BY NOME DESC


--CONTAGEM DE REPETI��O
SELECT COUNT( NOME), NOME 
FROM ALUNO 
GROUP BY NOME 
ORDER BY NOME DESC

--NOMEAR COLUNAS 
SELECT COUNT( NOME) AS 'QUANTIDADE', NOME 
FROM ALUNO 
GROUP BY NOME 
ORDER BY NOME DESC


SELECT ID AS 'N�MERO DE MATR�CULA', NOME, CURSO FROM ALUNO

--DELETAR
DELETE ALUNO
WHERE ID = 6


--ATUALIZAR 


UPDATE ALUNO
SET CURSO = 'Letras'
WHERE ID = 5

UPDATE ALUNO
SET CURSO = 'ADS',
	NOME = 'Vitor'
WHERE ID = 1






--Transa��o
--Iniciar uma transa��o
BEGIN TRAN 
--reverter altera��es 
ROLLBACK 
--Salvar Altera��es 
COMMIT

