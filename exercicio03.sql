-- > Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
CREATE DATABASE db_escola;
USE db_escola;

-- > Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
CREATE TABLE tb_estudantes(
	matricula BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    serie INT NOT NULL,
    responsavel VARCHAR(155),
    PRIMARY KEY (matricula)
);

-- > Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO tb_estudantes(nome, data_nascimento, serie, responsavel, notas) 
VALUES ("Maria", "2010-03-29", 7, "Dona Maria", 9.2);

INSERT INTO tb_estudantes(nome, data_nascimento, serie, responsavel, notas) 
VALUES ("João", "2015-04-13", 2, "Seu João", 2.4);

INSERT INTO tb_estudantes(nome, data_nascimento, serie, responsavel, notas)  
VALUES ("Pedro", "2011-06-01", 6, "Seu Pedro", 5.6);

INSERT INTO tb_estudantes(nome, data_nascimento, serie, responsavel, notas)  
VALUES ("Lucia", "2016-10-03", 1, "Lucinha", 6.3);

INSERT INTO tb_estudantes(nome, data_nascimento, serie, responsavel, notas) 
VALUES ("Italo", "2017-01-29", 1, "Itair", 7.5);

INSERT INTO tb_estudantes(nome, data_nascimento, serie, responsavel, notas)
VALUES ("Caio", "2020-11-11", 1, "Seu Fulano", 6.9);

INSERT INTO tb_estudantes(nome, data_nascimento, serie, responsavel, notas)
VALUES ("Lina", "2009-03-29", 8, "Lina Ela", 8.2);

INSERT INTO tb_estudantes(nome, data_nascimento, serie, responsavel, notas)
VALUES ("Paulo", "2007-12-25", 9, "Seu Paulo", 8.8);

ALTER TABLE tb_estudantes ADD notas DECIMAL(3,2);
SELECT * FROM tb_estudantes;

-- > Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
SELECT * FROM tb_estudantes WHERE notas > 7.0;

-- > Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
SELECT * FROM tb_estudantes WHERE notas < 7.0;

-- > Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_estudantes SET notas = 2.5 WHERE matricula = 1;