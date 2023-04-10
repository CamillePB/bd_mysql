-- criar um banco de dados 
CREATE DATABASE db_quitanda;

-- excluir um db: DROP DATABASE 

-- Iniciar o banco
USE db_quitanda;

-- alter table tb_produtos convert to character set utf8ab4 collate utf8mb4_0900_ai_cip;

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

-- Apagar Banco de Dados db_quitanda
DROP DATABASE db_quitanda;

-- Recriar o Banco de dados db_quitanda
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de Dados db_quitanda
USE db_quitanda;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");


INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ("outros");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Maçã", 1000, "2022-03-07", 1.99, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Banana", 1300, "2022-03-08", 5.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Laranja", 3000, "2022-03-13", 10.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Tomate", 1105, "2022-03-15", 3.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;

-- Informações das colunas
SHOW FULL COLUMNS FROM tb_produtos;

-- Ordernar em ordem crescente
SELECT * FROM tb_produtos ORDER BY nome; 

-- Ordernar em ordem decrescente
SELECT * FROM tb_produtos ORDER BY nome DESC;

-- Mostrar produtos que não possuam tal indice
SELECT * FROM tb_produtos WHERE NOT nome = "maça";

-- Mostrar dados apenas baseados em indices especificos
SELECT * FROM tb_produtos WHERE preco IN (5, 10, 15);

-- Mostrar apenas dados entre indices
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 15;

-- Dados que começam com "ra"
SELECT * FROM tb_produtos WHERE nome LIKE "ra%";

-- Dados que terminam com "ra"
SELECT * FROM tb_produtos WHERE nome LIKE "%ra";

-- Dados que possuem "ra" entre o começo e o fim da palavra
SELECT * FROM tb_produtos WHERE nome LIKE "%ra%";

-- Contar numero de linhas gerais
SELECT COUNT(*) FROM tb_produtos;

-- Contar numero de linhas especificas
SELECT COUNT(categoria_id) FROM tb_produtos;

-- Soma de dados
SELECT SUM(preco) AS Soma_Preço FROM tb_produtos;

-- Media de dados
SELECT AVG(preco) AS Media_Preço FROM tb_produtos;

-- Juntar duas colunas
SELECT categoria_id, AVG(preco) AS Media_preço
FROM tb_produtos GROUP BY categoria_id;

SELECT MAX(preco) FROM tb_produtos;

SELECT MIN(preco) FROM tb_produtos;

-- Selecionar todos os dados com chave estrangeira das tabelas
-- INNER JOIN (atributos que se relacionam entre tabelas)
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

-- Selecionar todos os dados das categorias associadas
SELECT * FROM tb_produtos LEFT JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

-- Selecionar todos os dados das categorias, mesmo sem indice
SELECT * FROM tb_produtos RIGHT JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;
