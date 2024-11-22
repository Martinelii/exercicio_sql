CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos(
	id BIGINT AUTO_INCREMENT,
	produto VARCHAR(255),
	preco DECIMAL(6,2),
	marca VARCHAR(255),
	quantidade INT,
	PRIMARY KEY(id)
);

INSERT INTO produtos(produto,preco,marca,quantidade)
	VALUES  ("Iphone 15 PRO Max", 1000, "Apple", 27),
			("Fone Hp", 20, "HP", 200),
			("Mouse", 120, "Red Dragon", 270),
            ("Monitor", 1200, "LG", 287),
            ("Monitor", 700, "Xpto", 47),
            ("S24", 1200, "Samsung", 125),
            ("Iphone 12", 8000, "Apple", 787),
            ("Apple Watch", 9250, "Apple", 27);

SELECT * FROM produtos WHERE preco > 500;
SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 925 WHERE id = 8;