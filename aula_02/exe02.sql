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

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;