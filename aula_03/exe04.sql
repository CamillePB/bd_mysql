
CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

	CREATE TABLE tb_categorias (
	id bigint auto_increment,
    tipo varchar(255) not null,
    quantidade bigint,
    primary key(id)
    );
    
   CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    categoria_id bigint not null,
    preco decimal(6,2) not null,
    marca varchar(255) not null,
    primary key(id),
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
	);
    
    INSERT INTO tb_categorias(tipo, quantidade)
values ("Acabamento", 5666),
("Revestimento", 20210),
("Estruturação", 8020),
("Ferramentas", 1320),
("Hidráulicos", 1240);

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome, categoria_id, preco, marca)
values ("Tijolo", 3 , 20, "Tigre"),
("Tinta Branca", 1 , 70.90, "Suvinil"),
("Massa Corrida", 1 , 30.50, "Coral"),
("Azulejo", 2 , 30, "Deca"),
("Chuveiro Elétrico", 5 , 110, "Tigre"),
("Pincel grande", 4 , 7.5, "Duratex"),
("Pincel grande", 4 , 7.5, "Duratex"),
("Torneita", 5 , 40.5, "Deca"),
("Verniz", 1 , 15, "Coral");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 5;
