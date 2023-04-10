CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

	CREATE TABLE tb_categorias (
	id bigint auto_increment,
    descricao varchar(255) not null,
    quantidade bigint,
    primary key(id)
    );
    
   CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    categoria_id bigint not null,
    preco decimal(6,2) not null,
    marca varchar(255) not null,
    lote bigint,
    primary key(id),
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
	);
    
    INSERT INTO tb_categorias(descricao, quantidade)
values ("Cosmético", 70),
("Remédio", 200),
("Higiene", 100),
("Alimento", 80),
("Bebida", 40);

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome, categoria_id, preco, marca, lote)
values ("Paracetamol", 2 , 20, "Tylenol", 56565),
("Aspirina", 2 , 10.5, "Bayer", 21563),
("Água mineral", 5 , 2, "Voss", 54567),
("Guaraná", 5 , 6.6, "Red Bull", 26548),
("Chocolate 40%", 4 , 6, "Nestlé", 87654),
("Base", 1 , 50.99, "MAC", 65489),
("Mascara de cilios", 1 , 10.99, "Ruby Rose", 36548),
("Escova de dentes", 3 , 12.99, "Colgate", 26547);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 1;


