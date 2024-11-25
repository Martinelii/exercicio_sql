CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    categoria VARCHAR(20),
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizza(
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(20),
    preco DECIMAL(5,2),
    fatias int,
    id_sabor BIGINT,
    PRIMARY KEY(id)
);

ALTER TABLE tb_pizza ADD CONSTRAINT FK_pizza_categoria
FOREIGN KEY (id_sabor) REFERENCES tb_categoria(id);

INSERT INTO tb_categoria(categoria)
VALUES ("Doce"), ("Salgada");

INSERT INTO tb_pizza(sabor, preco, fatias, id_sabor)
VALUES 
    ("Brigadeiro", 25.00, 6, 1),
    ("Torta Limão", 28.00, 8, 1),
    ("Margherita", 30.00, 4, 2),
    ("Frango c/ Catupiry", 32.00, 8, 2),
    ("Calabresa", 28.00, 4, 2),
    ("Morango c/ Chocolate", 33.00, 8, 1),
    ("Quatro Queijos", 40.00, 8, 2),
    ("Banoffee", 45.00, 8, 1),
    ("Nutella Morango", 50.00, 6, 1),
    ("Doce Leite Nozes", 80.00, 6, 1),
    ("Alho Poró Parma", 85.00, 8, 2),
    ("Pesto Tomate", 90.00, 8, 2),
    ("Cinnamon Roll", 95.00, 6, 1),
    ("Chocolate Framboesa", 100.00, 8, 1);
    

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE preco > 45;
SELECT * FROM tb_pizza WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizza WHERE sabor LIKE "%M%";

SELECT *
FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.id_sabor = tb_categoria.id;

SELECT *
FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.id_sabor = tb_categoria.id
WHERE tb_categoria.id = 1;