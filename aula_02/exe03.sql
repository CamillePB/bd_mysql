CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos(
	id bigint auto_increment,
    nome varchar(255) not null,
    turma int not null,
    nota decimal(6,2) not null,
    idade int not null,
    primary key(id)
    );
    
    SELECT * FROM tb_alunos;
    
    INSERT INTO tb_alunos(nome, turma, nota, idade)
values ("Ana", 2, 8.4, 12);
INSERT INTO tb_alunos(nome, turma, nota, idade)
values ("Leo", 2, 6.6, 12);
INSERT INTO tb_alunos(nome, turma, nota, idade)
values ("Julio", 2, 9.0, 12);
INSERT INTO tb_alunos(nome, turma, nota, idade)
values ("Juliana", 3, 8.0, 14);
INSERT INTO tb_alunos(nome, turma, nota, idade)
values ("Pedro", 3, 5.4, 14);
INSERT INTO tb_alunos(nome, turma, nota, idade)
values ("João", 3, 5.8, 14);
INSERT INTO tb_alunos(nome, turma, nota, idade)
values ("Ana Vitoria", 4, 10, 15);
INSERT INTO tb_alunos(nome, turma, nota, idade)
values ("Lucas", 4, 8, 15);

SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;