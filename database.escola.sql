CREATE DATABASE escola;

USE escola;

CREATE TABLE professor (
id_professor INT not null PRIMARY KEY,
nome VARCHAR(100) not null,
especialidade VARCHAR (100),
salario DECIMAL (10,2),
uf CHAR(2)
);

CREATE TABLE disciplina(
id_diciplina INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
id_professor INT,
carga_horaria INT,
FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
);

CREATE TABLE aluno(
id_aluno INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
sexo CHAR(1),
data_nascimento DATE,
nota_fiscal DECIMAL(4,2),
ativo BOOLEAN
);

CREATE TABLE curso(
id_curso INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR (100)NOT NULL,
carga_horaria INT,
modalidade VARCHAR(50)
);

CREATE TABLE matricula(
id_matricula INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
id_aluno INT,
id_curso INT,
data_matricula DATE,
FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

SHOW TABLES;
