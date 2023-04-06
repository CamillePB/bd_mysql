-- criar um banco de dados 
CREATE DATABASE db_quitanda;

-- excluir um db: DROP DATABASE 

-- Iniciar o banco
USE db_quitanda;

-- Criar tabela e atributos
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal not null,
    primary key(id)
    );
    
-- Visualizar tebela
SELECT * FROM tb_produtos;

-- Popular tabela
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("maça", 100, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("banana", 200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("uva", 300, 11.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("pera", 1000, 5.00);

-- Buscas especificas
SELECT nome, quantidade FROM tb_produtos;
SELECT * FROM tb_produtos WHERE id < 6 AND preco = 9;

-- Desabilitar segurança do SQL
SET SQL_SAFE_UPDATES = 0;

-- Atualizar colunas
UPDATE tb_produtos SET preco = 5.00 WHERE id = 1;

-- Deletar itens
DELETE FROM tb_produtos WHERE id = 5 OR id = 1;

-- Modificar colunas
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

-- Adicionar colunas
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- Deletar em grande escala
ALTER TABLE tb_produtos DROP descricao;

-- Trocar nome de colunas
ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar(255);
