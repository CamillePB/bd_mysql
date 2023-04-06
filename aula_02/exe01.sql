CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores(
	cpf bigint not null,
    nome varchar(255) not null,
    idade bigint not null,
    cidade varchar(255) not null,
    sexo char not null,
    primary key(cpf)
    );
    
    SELECT * FROM tb_colaboradores;
    
    INSERT INTO tb_colaboradores(cpf, nome, idade, cidade, sexo)
values (64548215321, "Camille", 19, "Mairiporã", "M");
INSERT INTO tb_colaboradores(cpf, nome, idade, cidade, sexo)
values (58721654830, "Pedro", 34, "São Paulo", "M");
INSERT INTO tb_colaboradores(cpf, nome, idade, cidade, sexo)
values (52635986127, "Ana", 23, "São Paulo", "F");
INSERT INTO tb_colaboradores(cpf, nome, idade, cidade, sexo)
values (23154986578, "João", 29, "Curitiba", "M");
INSERT INTO tb_colaboradores(cpf, nome, idade, cidade, sexo)
values (12463598634, "Fatima", 40, "Guarulhos", "F");

UPDATE tb_colaboradores SET sexo = "F" WHERE cpf = 64548215321;
ALTER TABLE tb_colaboradores ADD salario bigint;
ALTER TABLE tb_colaboradores DROP sexo;

UPDATE tb_colaboradores SET salario = 3000 WHERE cpf > 30000000000;
UPDATE tb_colaboradores SET salario = 1500 WHERE cpf < 30000000000;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

