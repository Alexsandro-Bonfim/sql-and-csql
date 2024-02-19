CREATE DATABASE academiaginastica;
USE academiaginastica;

CREATE TABLE Turma (
  idTurma INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Matrícula_idmatricula INTEGER UNSIGNED  NOT NULL,
  atividade_idatividade INTEGER UNSIGNED  NULL,
  instrutor_idinstrutor INTEGER UNSIGNED  NULL,
  horario DATE  NULL,
  duracao DATE  NULL,
  dataInicio DATE  NULL,
  dataFim DATE  NULL,
PRIMARY KEY(idTurma),
INDEX Turma_FKIndex1(Matrícula_idmatricula)
);

INSERT INTO Turma (Matrícula_idmatricula, atividade_idatividade, instrutor_idinstrutor, horario, duracao, dataInicio, dataFim)
VALUES (1, 1, 1, '07:00', '2 anos', '2023-03-01', '2025-03-01');

CREATE TABLE Instrutor (
  idinstrutor INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Aluno_idaluno INTEGER UNSIGNED  NOT NULL,
  telefone_instrutor_idtelefone_instrutor INTEGER UNSIGNED  NOT NULL,
  rg VARCHAR(11)  NULL,
  nome VARCHAR(250)  NULL,
  nascimento DATE  NULL,
  titulacao VARCHAR(20),
PRIMARY KEY(idinstrutor),
INDEX Instrutor_FKIndex1(telefone_instrutor_idtelefone_instrutor),
INDEX Instrutor_FKIndex2(Aluno_idaluno)
);

INSERT INTO Instrutor (Aluno_idaluno, telefone_instrutor_idtelefone_instrutor, rg, nome, nascimento, titulacao)
VALUES (1, 1, '12345678901', 'João Silva', '1990-01-01', 'Mestrado');

CREATE TABLE Aluno (
  idaluno INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Matrícula_idmatricula INTEGER UNSIGNED  NOT NULL,
  turma_idturma INTEGER UNSIGNED  NULL,
  datamatricula DATE  NULL,
  nome VARCHAR(255)  NULL,
  endereco TEXT  NULL,
  telefone VARCHAR(15)  NULL,
  datanascimento INTEGER UNSIGNED  NULL,
  altura FLOAT  NOT NULL,
  peso FLOAT  NULL,
PRIMARY KEY(idaluno),
INDEX Aluno_FKIndex1(Matrícula_idmatricula)
);

INSERT INTO Aluno (Matrícula_idmatricula, turma_idturma, datamatricula, nome, endereco, telefone, datanascimento, altura, peso)
VALUES (1, 1, '2023-01-01', 'Maria Santos', 'Rua Principal, 123', '987654321', '1995-01-01', 1.70, 65.5);

CREATE TABLE telefone_instrutor (
  idtelefone_instrutor INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  instrutor_idinstrutor INTEGER UNSIGNED  NULL,
  numero VARCHAR(11)  NULL,
  tipo VARCHAR(41)  NULL,
PRIMARY KEY(idtelefone_instrutor)
);

INSERT INTO telefone_instrutor (instrutor_idinstrutor, numero, tipo)
VALUES (1, '987654321', 'Celular');


CREATE TABLE Atividade (
  idAtividade INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Turma_idTurma INTEGER UNSIGNED  NOT NULL,
  nome VARCHAR(100)  NULL,
PRIMARY KEY(idAtividade),
INDEX Atividade_FKIndex1(Turma_idTurma)
);

INSERT INTO Atividade (Turma_idTurma, nome)
VALUES 
    (1, 'pilates');
    (2, 'natação'),
    (3, 'hidroginástica');
    (4, 'musculação'),
    (5, 'crossfit'),
    (6, 'dança'),
    (7, 'aeróbica');


CREATE TABLE Matrícula (
  idmatricula INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  aluno_idaluno INTEGER UNSIGNED  NULL,
  turma_idturma INTEGER UNSIGNED  NULL,
PRIMARY KEY(idmatricula)
);

INSERT INTO Matrícula (aluno_idaluno, turma_idturma)
VALUES (1, 1);


CREATE TABLE Chamada (
  idchamada INTEGER UNSIGNED  NOT NULL,
  Matrícula_idmatricula INTEGER UNSIGNED  NOT NULL,
  data_2 DATE  NULL,
  presente BOOL  NULL,
PRIMARY KEY(idchamada),
INDEX Chamada_FKIndex1(Matrícula_idmatricula)
);

INSERT INTO Chamada (Matrícula_idmatricula, matricula_idmatricula, data_2, presente)
VALUES (1, 1, '2023-03-01', 1);


-- Inserindo valores na tabela Turma
INSERT INTO Turma (Matrícula_idmatricula, atividade_idatividade, instrutor_idinstrutor, horario, duracao, dataInicio, dataFim)
VALUES 
    (1, 1, 1, '07:00', '2 anos', '2023-03-01', '2025-03-01'),
    (2, 2, 2, '08:30', '1 ano', '2023-04-15', '2024-04-15'),
    (3, 3, 3, '10:00', '6 meses', '2023-05-20', '2023-11-20'),
    (4, 4, 4, '17:00', '1 ano e meio', '2023-06-10', '2024-12-10'),
    (5, 1, 2, '16:00', '1 ano', '2023-07-05', '2024-07-05'),
    (6, 2, 3, '09:00', '8 meses', '2023-08-01', '2024-04-01'),
    (7, 3, 4, '18:30', '1 ano', '2023-09-10', '2024-09-10'),
    (8, 4, 5, '15:30', '2 anos', '2023-10-15', '2025-10-15'),
    (9, 1, 3, '19:00', '1 ano', '2023-11-20', '2024-11-20'),
    (10, 2, 4, '11:30', '1 ano e meio', '2023-12-05', '2025-06-05');
