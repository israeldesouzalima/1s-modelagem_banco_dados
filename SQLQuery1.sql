CREATE DATABASE ANIMAIS;

USE ANIMAIS;

CREATE TABLE ANIMAIS(
	ANI_INT_ID INT IDENTITY(1,1) NOT NULL,

	ANI_STR_NOME VARCHAR(70) NOT NULL,
	ANI_STR_IDADE VARCHAR(4) NOT NULL,
	ANI_STR_CODIGORASTREAMENTO CHAR(11) NOT NULL,


	CONSTRAINT PK_ANIMAIS_ID PRIMARY KEY(ANI_INT_ID)
);

ALTER TABLE ANIMAIS
ADD CONSTRAINT UK_ANIMAIS_CODIGORASTREAMENTO UNIQUE (ANI_STR_CODIGORASTREAMENTO);

ALTER TABLE ANIMAIS
DROP CONSTRAINT UK_ANIMAIS_CODIGORASTREAMENTO;

DROP TABLE ANIMAIS;

USE master;

DROP DATABASE ANIMAIS;