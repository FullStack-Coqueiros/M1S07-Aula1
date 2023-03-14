
--EXEMPLO PARA CRIAR Fk NA CRIA��O DA TABELA 

--CREATE TABLE TELEFONES(
--ID INT PRIMARY KEY IDENTITY(1,1),
--TELEFONE VARCHAR(11),
--ID_ALUNO INT REFERENCES ALUNO(ID) 
--)


--CRIA��O DA TABELA BASE 
CREATE TABLE TELEFONES(
ID INT PRIMARY KEY IDENTITY(1,1),
TELEFONE VARCHAR(11), --Utilizamos varchar para documentos numericos por conta de zero a esquerda.
ID_ALUNO INT, 
)


--ADI��O DE FK DA ALUNO
ALTER TABLE TELEFONES ADD FOREIGN KEY  (ID_ALUNO) REFERENCES ALUNO(ID)

--EXCLUS�O FK ID TELEFONE
ALTER TABLE TELEFONES DROP PK__TELEFONE__3214EC27D3E7D90A
ALTER TABLE TELEFONES DROP COLUMN  ID 

--ALTERA��O DE COLUNAS PARA NOT NULL 
ALTER TABLE TELEFONES ALTER COLUMN TELEFONE INT NOT NULL 
ALTER TABLE TELEFONES ALTER COLUMN ID_ALUNO INT NOT NULL 

--CRIA��O DE PK COMPOSTA 
ALTER TABLE TELEFONES ADD PRIMARY KEY (TELEFONE, ID_ALUNO)

--INSER��ES 
INSERT INTO TELEFONES VALUES ('1194526548', 6)
INSERT INTO TELEFONES VALUES ('1194526548', 1)
INSERT INTO TELEFONES (TELEFONE, ID_ALUNO) VALUES ('116546544', 6)
INSERT INTO TELEFONES (TELEFONE, ID_ALUNO) VALUES ('116546545', 6)

--SELECT TELEFONES CRUZADO COM ALUNO
SELECT * FROM TELEFONES 
WHERE ID_ALUNO = 6

SELECT * FROM ALUNO
WHERE ID = 6


--DELETES 
--DELETE TELEFONES 
--WHERE TELEFONE = '116546544' AND ID_ALUNO = 6

DELETE TELEFONES 
WHERE  ID_ALUNO = 6