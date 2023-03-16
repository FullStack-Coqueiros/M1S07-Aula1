CREATE DATABASE AULA3_SLIDE
GO 
USE  AULA3_SLIDE

--DROP DATABASE AULA3_SLIDE


CREATE TABLE CLIENTES(
ID INT PRIMARY KEY,
NOME VARCHAR(50)
)

CREATE TABLE TELEFONES(
TELEFONE VARCHAR(11) NOT NULL,
ID_CLIENTE INT REFERENCES CLIENTES(ID) NOT NULL 
)
ALTER TABLE TELEFONES ADD PRIMARY KEY (TELEFONE, ID_CLIENTE)


INSERT INTO CLIENTES (ID, NOME) VALUES (1, 'Lucas'),
									   (2, 'Vanessa'),
									   (3, 'Graziela')

									   
INSERT INTO TELEFONES (TELEFONE, ID_CLIENTE) VALUES ('12345', 1),
													('45641', 3),
											 	    ('98765', 3)