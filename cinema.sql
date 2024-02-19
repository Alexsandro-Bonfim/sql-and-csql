CREATE DATABASE Caso_cinema;
USE Caso_cinema;

CREATE TABLE Salas (
  idsala INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(255)  NULL,
  capacidade INTEGER UNSIGNED  NULL,
PRIMARY KEY(idsala)
);

INSERT INTO Salas (nome, capacidade) VALUES ('Sala 1', 100), ('Sala 2', 80), ('Sala 3', 120);
SELECT*FROM Salas;

CREATE TABLE Filmes (
  idFilmes INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome_pt VARCHAR(50)  NULL,
  nome_original VARCHAR(50)  NULL,
  diretor VARCHAR(30)  NULL,
  ano_lancamento YEAR  NULL,
  tipo VARCHAR(20)  NULL,
  sinopse TEXT  NULL,
PRIMARY KEY(idFilmes)
);

INSERT INTO Filmes (nome_pt, nome_original, diretor, ano_lancamento, tipo, sinopse) VALUES ('Filme A', 'Original A', 'Diretor A', 2020, 'Ação', 'Sinopse A'), ('Filme B', 'Original B', 'Diretor B', 2018, 'Drama', 'Sinopse B'), ('Filme C', 'Original C', 'Diretor C', 2019, 'Comédia', 'Sinopse C');
SELECT*FROM Filmes;

CREATE TABLE Premiações (
  idPremiacao INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Filmes_idFilmes INTEGER UNSIGNED  NOT NULL  ,
  Filmes_idfilme INTEGER UNSIGNED  NULL  ,
  premiacao VARCHAR(30)  NULL  ,
  ano YEAR  NULL    ,
PRIMARY KEY(idPremiacao)  ,
INDEX Premiações_FKIndex1(Filmes_idFilmes)
);
INSERT INTO Premiações (filme_id, premiacao, ano) VALUES (1, 'Palma de Ouro', 2021),(1, 'Oscar de Melhor Ator', 2021), (2, 'Oscar de Melhor Filme', 2019);
SELECT*FROM Premiações;


CREATE TABLE Exibições (
  idExibicao INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Salas_idsala INTEGER UNSIGNED  NULL  ,
  Filmes_idfilmes INTEGER UNSIGNED  NULL  ,
  horario TIME  NULL,
  funcionarios VARCHAR(255)  NULL,
PRIMARY KEY(idExibicao),
INDEX Exibições_FKIndex1(Salas_idsala)
);

INSERT INTO Exibições (idExibicao, Salas_idsala, Filmes_idfilmes, horario, funcionarios) VALUES ('123', 'R4', 'Sessão Jason Statham', '15:00', 'Carla', 'Eduardo', 'Matheus', 'Ricardo', 'Marli', 'Pollyana') 
SELECT*FROM Exibições;

CREATE TABLE Funcionários (
  carteira_trabalho INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(30)  NULL  ,
  data_admissao TIME  NULL  ,
  salario DECIMAL  NULL  ,
  função VARCHAR(20)  NULL    ,
PRIMARY KEY(carteira_trabalho)
);
INSERT INTO Funcionários (carteira_trabalho, nome, data_admissao, salario, função) VALUES
  (1, 'João Silva', '2023-09-14 09:00:00', 3000.00, 'Atendente'),
  (2, 'Maria Souza', '2023-09-14 10:15:00', 2800.50, 'Bilheteiro'),
  (3, 'Pedro Santos', '2023-09-15 08:30:00', 3200.75, 'Gerente');

SELECT*FROM Funcionários;
