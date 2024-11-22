CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    data_admissao DATE,
    cargo VARCHAR(255),
    salario DECIMAL(6,2),
	PRIMARY KEY(id)
);

INSERT INTO colaboradores(nome, data_admissao, cargo, salario)
			VALUES ("Keven", "2025-02-18", "Beck-End", 2000),
            ("Maria", "2025-02-18", "Back-End", 2000),
            ("João", "2025-02-25", "Cientista de Dados", 4000),
            ("Pedro", "2025-07-26", "Analista", 2500),
            ("Julia", "2025-08-08", "Front-End", 5000);
            
SELECT * FROM colaboradores WHERE salario > 2000;   
SELECT * FROM colaboradores WHERE salario < 2000;          

UPDATE colaboradores SET cargo = "Back-End" WHERE id = 1; 

