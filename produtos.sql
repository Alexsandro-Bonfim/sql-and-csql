CREATE DATABASE produto1;
USE produto1;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    categoria VARCHAR(50),
    preco DECIMAL(10, 2)
);

INSERT INTO produtos (nome, categoria, preco) VALUES
    ('Notebook HP', 'Eletrônicos', 1200.00),
    ('Fone de Ouvido', 'Acessórios', 80.00),
    ('Smartphone Samsung', 'Eletrônicos', 900.00),
    ('Mochila', 'Acessórios', 50.00),
    ('Monitor LG', 'Eletrônicos', 350.00);

CONSULTA:

/*selecionar produtos com preços entre um intervalo específico, por exemplo, entre R$ 100,00 e R$ 800,00*/

SELECT nome, preco
FROM produtos
WHERE preco BETWEEN 100.00 AND 800.00;



CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE,
    status VARCHAR(20),
    valor_total DECIMAL(10, 2)
);

INSERT INTO pedidos (data_pedido, status, valor_total) VALUES
    ('2023-07-10', 'Entregue', 1200.00),
    ('2023-08-15', 'Processando', 350.00),
    ('2023-05-28', 'Entregue', 900.00),
    ('2023-09-05', 'Entregue', 1500.00),
    ('2023-06-02', 'Processando', 300.00);


CONSULTA:

SELECT *
FROM pedidos
WHERE data_pedido BETWEEN '2023-06-01' AND '2023-08-31';
