CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

	CREATE TABLE tb_classes (
	id bigint auto_increment,
    cla varchar(255) not null,
    tipo varchar(255) not null,
    primary key(id)
    );
    
    CREATE TABLE tb_personagem(
	id bigint AUTO_INCREMENT,
	nome varchar(255) NOT NULL,
	nivel bigint, 
    equipe varchar(255) NOT NULL,
    poder varchar(255) NOT NULL,
	id_classes bigint not null,
	PRIMARY KEY (id),
	FOREIGN KEY (id_classes) REFERENCES tb_classes(id)
	);
    
    INSERT INTO tb_classes(cla, tipo)
values ("Os Imortais", "Fada"),
("Destruidores", "Fada"),
("Legião do Fogo", "Fenix"),
("Os Imortais", "Fenix"),
("Aliança do Universo", "Alien"),
("Confederação das Galáxias", "Alien");

INSERT INTO tb_personagem(nome, nivel, equipe, poder, id_classes)
values ("Boris", 13 ,"Donas do campo", "Terra", 1),
("Martius", 23 ,"Demolidores", "Água", 2),
("Absalom", 250 ,"Demolidores", "Terra", 6),
("Yngvarr", 49 ,"Donas do campo", "Fogo", 1),
("Magno", 79 ,"Grupo Alpha", "Fogo", 1),
("Zeus", 9 ,"Grupo Alpha", "Fogo", 3),
("Ícarus", 90 ,"Go Team", "Terra", 4),
("Elmo", 60 ,"Go Team", "Água", 5);

SELECT * FROM tb_personagem;
SELECT * FROM tb_classes;

ALTER TABLE tb_personagem add ataque bigint;

UPDATE tb_personagem  SET ataque = 2000 WHERE id = 1;
UPDATE tb_personagem  SET ataque = 2030 WHERE id = 2;
UPDATE tb_personagem  SET ataque = 4000 WHERE id = 3;
UPDATE tb_personagem  SET ataque = 1000 WHERE id = 4;
UPDATE tb_personagem  SET ataque = 2019 WHERE id = 5;
UPDATE tb_personagem  SET ataque = 9300 WHERE id = 6;
UPDATE tb_personagem  SET ataque = 5321 WHERE id = 7;
UPDATE tb_personagem  SET ataque = 900 WHERE id = 8;

ALTER TABLE tb_personagem add defesa bigint;

UPDATE tb_personagem  SET defesa = 2000 WHERE id = 1;
UPDATE tb_personagem  SET defesa = 4132 WHERE id = 2;
UPDATE tb_personagem  SET defesa = 2121 WHERE id = 3;
UPDATE tb_personagem  SET defesa = 100 WHERE id = 4;
UPDATE tb_personagem  SET defesa = 539 WHERE id = 5;
UPDATE tb_personagem  SET defesa = 534 WHERE id = 6;
UPDATE tb_personagem  SET defesa = 76 WHERE id = 7;
UPDATE tb_personagem  SET defesa = 827 WHERE id = 8;

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT * FROM tb_personagem INNER JOIN tb_classes
ON tb_personagem.id_classes = tb_classes.id;

SELECT * FROM tb_personagem INNER JOIN tb_classes
ON tb_personagem.id_classes = tb_classes.id
WHERE tb_classes.id = 1;


