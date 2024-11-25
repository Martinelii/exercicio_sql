CREATE DATABASE db_farmacia_bem_esta;
USE db_farmacia_bem_esta;

CREATE TABLE tb_categoria(
    id BIGINT AUTO_INCREMENT,
    categoria VARCHAR(20),
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    produto VARCHAR(20),
    preco DECIMAL(5,2),
    id_categoria BIGINT,
    quantidade_estoque INT,
    PRIMARY KEY(id)
);


ALTER TABLE tb_produtos ADD CONSTRAINT FK_produtos_categoria
FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id);

INSERT INTO tb_categoria(categoria)
VALUES ("Medicamento"), ("Higiene");

INSERT INTO tb_produtos(produto, preco, id_categoria, quantidade_estoque)
VALUES ('Aspirina', 25.50, 1, 100),       
    ('Ibuprofeno', 18.75, 1, 200),    
    ('Paracetamol', 35.00, 1, 150),    
    ('Shampoo', 45.90, 2, 80),         
    ('Creme Dental', 5.50, 2, 300),    
    ('Desodorante', 15.00, 2, 250),    
    ('Sabonete', 8.00, 2, 500),        
    ('Kit Shampoo', 60.00, 2, 100),  
    ('Pomada Analgésica', 50.50, 1, 60),  
    ('Xarope para Tosse', 70.00, 1, 40);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;



SELECT *
FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.id_categoria = tb_categoria.id;

SELECT *
FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.id_categoria = tb_categoria.id
WHERE tb_categoria.id = 1;