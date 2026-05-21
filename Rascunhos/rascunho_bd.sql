CREATE DATABASE gerenciador_de_estudos;

CREATE TABLE Turma (
	primary key id_turma CHAR(8),
    
    horario VARCHAR(10),
    sala VARCHAR(10),
    
	foreign key id_prof CHAR(8),
	foreign key cod_disciplina CHAR(7),
    foreign key id_curso CHAR(5);
);

CREATE TABLE Professor (
	primary key id_prof varchar(8),
    nome varchar(30),
    
	email varchar(30) UNIQUE,
    departamento CHAR(3),
    sala VARCHAR(10),

	foreign key id_turma VARCHAR(8);
);

-- -- --
-- CREATE TABLE Aluno,
-- CREATE TABLE Curso,
-- CREATE TABLE Avaliacao,
-- CREATE TABLE Disciplina,
-- CREATE TABLE Conteudo,
-- CREATE TABLE Estudos,
-- CREATE TABLE FeedbackTurma;