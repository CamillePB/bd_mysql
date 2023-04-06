CREATE DATABASE db_ecomerce;
USE db_ecomerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    categoria varchar(255) not null,
    preco decimal(6,2) not null,
    marca varchar(255) not null,
    primary key(id)
    );
    
    SELECT * FROM tb_produtos;
    
    INSERT INTO tb_produtos(nome, categoria, preco, marca)
values ("Carrinho", "Infantil", 50.00, "HiHappy");
INSERT INTO tb_produtos(nome, categoria, preco, marca)
values ("Vassoura", "Casa", 10.00, "Ypê");
INSERT INTO tb_produtos(nome, categoria, preco, marca)
values ("Sabonete", "Higiene", 5.00, "Dove");
INSERT INTO tb_produtos(nome, categoria, preco, marca)
values ("Computador", "Eletronico", 2000.00, "HP");
INSERT INTO tb_produtos(nome, categoria, preco, marca)
values ("Smartphone", "Eletronico", 1500.00, "Motorola");
INSERT INTO tb_produtos(nome, categoria, preco, marca)
values ("Espelho", "Decoração", 50.00, "MadeiraMadeira");
INSERT INTO tb_produtos(nome, categoria, preco, marca)
values ("Cama", "Casa", 2000.00, "MadeiraMadeira");
INSERT INTO tb_produtos(nome, categoria, preco, marca)
values ("Relógio", "Acessório", 500.00, "Apple");
INSERT INTO tb_produtos(nome, categoria, preco, marca)
values ("Lâmpada Led", "Casa", 10.00, "Eletrolux");

ALTER TABLE tb_produtos ADD lote bigint;

UPDATE tb_produtos SET lote = 87438 WHERE id = 1;
UPDATE tb_produtos SET lote = 54889 WHERE id = 2;
UPDATE tb_produtos SET lote = 15495 WHERE id = 3;
UPDATE tb_produtos SET lote = 51512 WHERE id = 4;
UPDATE tb_produtos SET lote = 55158 WHERE id = 5;
UPDATE tb_produtos SET lote = 78954 WHERE id = 6;
UPDATE tb_produtos SET lote = 65499 WHERE id = 7;
UPDATE tb_produtos SET lote = 28987 WHERE id = 8;

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;