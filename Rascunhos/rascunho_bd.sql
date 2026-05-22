CREATE DATABASE gerenciador_de_estudos;
-- acessar base de dados

CREATE TABLE Departamento (
	cod_departamento CHAR(3) PRIMARY KEY,
	nome VARCHAR(20)
);

CREATE TABLE Professor (
	id_prof CHAR(8) primary key,
    nome VARCHAR(30),
    
	email VARCHAR(30) UNIQUE,
    departamento CHAR(3),
    sala VARCHAR(10),

	foreign key (departamento) references Departamento(cod_departamento)
);

CREATE TABLE Turma (
	id_turma CHAR(8) primary key,
  
  	professor CHAR(8),
  	disciplina CHAR(7),
	
    horario VARCHAR(10),
    sala VARCHAR(10),
    
	foreign key (professor) references Professor(id_prof),
	foreign key (disciplina) references Disciplina(cod_disc)
);

-- -- --
-- CREATE TABLE Aluno,
-- CREATE TABLE Curso,
-- CREATE TABLE Avaliacao,
-- CREATE TABLE Disciplina,
-- CREATE TABLE Conteudo,
-- CREATE TABLE Estudos,
-- CREATE TABLE FeedbackTurma;
