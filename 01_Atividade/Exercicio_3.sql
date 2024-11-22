CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE alunos(
	id BIGINT AUTO_INCREMENT,
    matricula int,
    nome VARCHAR(255),
    nota DECIMAL(4,2),
    turma VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO alunos(matricula, nome, nota, turma)
	 VALUES  (5213,"João",9.5,"77"),
			 (5213,"Maria",10,"77"),
			 (5213,"Julia",9.0,"77"),
			 (5213,"Pedro",7.5,"78"),
			 (5213,"João",7.0,"78"),
			 (5213,"Marcos",8.5,"79"),
			 (5213,"Mariana",9.5,"79"),
			 (5213,"Adriano",9.9,"76");
             
SELECT * FROM alunos WHERE nota > 7;
SELECT * FROM alunos WHERE nota < 7;

SELECT * FROM alunos;

UPDATE alunos SET nota = 6.9 WHERE id = 6;

