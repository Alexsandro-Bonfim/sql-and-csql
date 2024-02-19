CREATE DATABASE empresa;
USE empresa;

CREATE TABLE Funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    primeiro_nome VARCHAR(50),
    ultimo_nome VARCHAR(50),
    data_nascimento DATE,
    cargo VARCHAR(100),
    salario DECIMAL(10, 2),
    cidade VARCHAR(45),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(id)
);

CREATE TABLE Departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id) 
VALUES
('João Silva', 'Analista de Dados', 5000, 1);
('Maria Oliveira', 'Engenheira de Software', 6000, 2);
('Pedro Santos', 'Designer', 4500, 1);

INSERT INTO Departamentos (nome)    --insere na tabela Departamentos
VALUES ('TI');
VALUES ('Marketing');
VALUES ('Recursos Humanos');

SELECT PrimeiroNome, UltimoNome
FROM Funcionarios
ORDER BY UltimoNome;

SELECT * FROM Funcionarios  
ORDER BY cidade;

SELECT * FROM Funcionarios
WHERE salario > 1000
ORDER BY nome_completo;

--para listar a data de nascimento e o primeiro nome
SELECT data_nascimento, PrimeiroNome
FROM Funcionarios
ORDER BY data_nascimento ASC;

-- listagem telefônica
SELECT UltimoNome, PrimeiroNome, Telefone
FROM Funcionarios
ORDER BY UltimoNome, PrimeiroNome;

-- total da folha de pagamento
SELECT SUM(salario) AS total_folha_pagamento
FROM Funcionarios;

-- quantidade de funcionários da empresa
SELECT COUNT(*) AS quantidade_funcionarios
FROM Funcionarios;

-- salário médio pago pela empresa
SELECT AVG(salario) AS salario_medio
FROM Funcionarios;

