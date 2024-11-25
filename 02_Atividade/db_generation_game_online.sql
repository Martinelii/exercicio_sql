CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id INT AUTO_INCREMENT,
    funcao VARCHAR(50),
    vidaBase INT,
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nivel INT,
    apelido VARCHAR(255),
    especie VARCHAR(255),
    id_classe INT,
    poderAtaque BIGINT,
    poderDefesa BIGINT,
    PRIMARY KEY(id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (id_classe) REFERENCES tb_classes(id);

INSERT INTO tb_classes(funcao, vidaBase)
VALUES ("Guerreiro", 30),
	   ("Arqueiro", 20),
	   ("Mago", 15), 
	   ("Bardo", 20), 
	   ("Ladino", 20);
       
SELECT * FROM tb_classes;

INSERT INTO tb_personagens(nivel,apelido,especie,id_classe,poderAtaque,poderDefesa)
VALUES (1,"Ragnar","Humano",1,500,250),
	   (3,"Marta","Elfa",2, 1500,750),
       (20,"Robin","Elfo",5, 6000,3000),
       (30,"Wood","Anão",1, 12000,6000),
       (7,"Star","Gnomo",4, 1998,999),
       (13,"Ardo","Humano",4, 1000,500),
       (26,"Pyke","Elfo",3, 8758,4379),
       (43,"Merlin","Humano",3, 22000,12000);
       
SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poderAtaque > 2000;
SELECT * FROM tb_personagens WHERE poderAtaque < 2000;

SELECT * FROM tb_personagens WHERE poderDefesa > 2000;
SELECT * FROM tb_personagens WHERE poderDefesa < 2000;

SELECT * FROM tb_personagens WHERE apelido = "%C%";

-- Unir dados das duas tabelas
SELECT apelido, tb_classes.funcao, nivel, poderAtaque, poderDefesa, especie,tb_classes.vidaBase
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT *
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT apelido, tb_classes.funcao, nivel, poderAtaque, poderDefesa
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.id = 2;