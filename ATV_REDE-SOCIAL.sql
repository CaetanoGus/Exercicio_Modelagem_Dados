-- 1o PASSO: CRIAR O ESQUEMA DE BANCO DE DADOS
-- CREATE DATABASE IF NOT EXISTS REDE_SOCIAL; ou
CREATE SCHEMA IF NOT EXISTS REDE_SOCIAL;

-- 2o PASSO: INFORMA QUAL BASE DE BANCO DE DADOS OU ESQUEMA SERÁ UTILIZADO
USE REDE_SOCIAL_CC1Mb;

-- 3o PASSO: CRIAR AS TABELAS DE DADOS COM SEUS ATRIBUTOS
-- CRIAR PRIMEIRO AS TABELAS QUE NÃO POSSUEM CHAVE ESTRANGEIRA
CREATE TABLE IF NOT EXISTS USUARIOS(
ID_USUARIO INT,
NOME VARCHAR(50),
EMAIL VARCHAR(50),
SENHA VARCHAR(15),
PRIMARY KEY(ID_USUARIO) -- EM CASO DE PK COMPOSTAS, USAR ESSA RESTRIÇÃO
);

CREATE TABLE IF NOT EXISTS POSTAGEM(
ID_POSTAGEM INT PRIMARY KEY,
DATA_PUBLICACAO DATE,
LIKES INT,
LEGENDA VARCHAR(100),
CONSTRAINT USU_POST FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);

CREATE TABLE IF NOT EXISTS COMENTARIOS(
ID_COMENTARIOS INT PRIMARY KEY,
DATA_COMENTARIO DATE,
HORA TIME,
LIKES INT,
CONSTRAINT USU_COMENT FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO),
CONSTRAINT POST_COMENT FOREIGN KEY (ID_POSTAGEM) REFERENCES POSTAGEM(ID_POSTAGEM)
);

CREATE TABLE IF NOT EXISTS GRUPOS_RELACIONAIS(
COD_GRUPO VARCHAR(12) PRIMARY KEY,
CONSTRAINT LIVRO_EDITORA FOREIGN KEY (EDITORA) REFERENCES EDITORAS(ID_EDITORA)
-- A RESTRIÇÃO "LIVRO_EDITORA" TEM UMA PK "EDITORA" QUE REFERENCIA A TABELA EDITORAS
);

CREATE TABLE IF NOT EXISTS LIVROS_AUTORES(
ISBN VARCHAR(12),
AUTOR INT,
PRIMARY KEY(ISBN,AUTOR),
CONSTRAINT LIV_AUT FOREIGN KEY (ISBN) REFERENCES LIVROS(ISBN),
CONSTRAINT AUT_LIV FOREIGN KEY (AUTOR) REFERENCES AUTORES(ID_AUTOR)
);

CREATE TABLE IF NOT EXISTS EMP_LIVROS(
EMPRESTIMO INT,
ISBN VARCHAR(12),
PRIMARY KEY(EMPRESTIMO,ISBN),
CONSTRAINT LIV_EMP FOREIGN KEY (ISBN) REFERENCES LIVROS(ISBN),
CONSTRAINT EMP_LIV FOREIGN KEY (EMPRESTIMOS) REFERENCES EMPRESTIMOS(ID_EMP)
);