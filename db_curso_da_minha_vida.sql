CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(125) NOT NULL,
    ativa BOOL NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_cursos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(125) NOT NULL,
    turno VARCHAR(50),
    preco DECIMAL(8,2),
    categorias_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id)
);

ALTER TABLE tb_cursos ADD categorias VARCHAR(500);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Programação", true);
INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Idiomas", true);
INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Gestão", true);
INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Ferramentas de escritório", true);
INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Marketing", true);

SELECT * FROM tb_categorias;

INSERT INTO tb_cursos (nome, turno, preco, categorias_id) 
VALUES ("Java iniciante", "noturno", 40, 1);
INSERT INTO tb_cursos (nome, turno, preco, categorias_id) 
VALUES ("Inglês básico", "noturno", 44, 2);
INSERT INTO tb_cursos (nome, turno, preco, categorias_id) 
VALUES ("Metodologia SCRUM", "matutino", 34, 3);
INSERT INTO tb_cursos (nome, turno, preco, categorias_id) 
VALUES ("Pacote office", "matutino", 42, 4);
INSERT INTO tb_cursos (nome, turno, preco, categorias_id) 
VALUES ("Vendas", "noturno", 60, 5);
INSERT INTO tb_cursos (nome, turno, preco, categorias_id) 
VALUES ("Javascript iniciante", "vespertino", 66, 1);
INSERT INTO tb_cursos (nome, turno, preco, categorias_id) 
VALUES ("Espanhol básico", "integral", 70, 2);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 50;

SELECT * FROM tb_cursos WHERE preco BETWEEN 3 AND 60;

