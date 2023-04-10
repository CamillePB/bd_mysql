
CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

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
    validade date,
    primary key(id),
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
	);
    
    INSERT INTO tb_categorias(descricao, quantidade)
values ("Legume", 100),
("Folha Verde", 200),
("Raiz", 80),
("Fruta", 130),
("Leguminosa", 40);

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome, categoria_id, preco, validade)
values ("Banana", 4 , 70, '2023/04/20');

INSERT INTO tb_produtos(nome, categoria_id, preco, validade)
values ("Maça", 4 , 100, '2023-04-30'),
("Canoura", 1 , 50, '2023-06-30'),
("Alface", 2 , 60.50, '2023-04-21'),
("Feijão", 5 , 100, '2023-09-28'),
("Ervilha", 5 , 150, '2023-10-30'),
("Mandioca", 3 , 70.3, '2023-05-15'),
("Abobrinha", 1 , 50, '2023-05-10');

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 4;
