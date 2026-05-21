CREATE DATABASE gerenciador_de_estudos;

CREATE TABLE Turma (
	primary key id_turma CHAR(8),
    
    horario VARCHAR(10),
    sala VARCHAR(10),
    
	foreign key (id_prof) references Professor(id_prof),
    foreign key (id_curso) references Curso(id_curso),
	foreign key (cod_disc) references Disciplina(cod_disc),
);

CREATE TABLE Professor (
	primary key id_prof varchar(8),
    nome varchar(30),
    
	email varchar(30) UNIQUE,
    departamento CHAR(3),
    sala VARCHAR(10),

	foreign key (id_turma) references Turma(id_turma),
	foreign key (cod_dep) references Departamento(cod_dep);
);

-- -- --
-- CREATE TABLE Aluno,
-- CREATE TABLE Curso,
-- CREATE TABLE Avaliacao,
-- CREATE TABLE Disciplina,
-- CREATE TABLE Conteudo,
-- CREATE TABLE Estudos,
-- CREATE TABLE FeedbackTurma;
