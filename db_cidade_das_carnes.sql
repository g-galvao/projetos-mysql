CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(125),
    descricao VARCHAR(125),
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(125),
    preco DECIMAL (6,2) NOT NULL,
    descricao VARCHAR(125),
    categorias_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome)
VALUES ("bovina");
INSERT INTO tb_categorias(nome)
VALUES ("suina");
INSERT INTO tb_categorias(nome)
VALUES ("frango");
INSERT INTO tb_categorias(nome)
VALUES ("premium steak");
INSERT INTO tb_categorias(nome)
VALUES ("importação");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("boi", 59.60, 1);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("porco", 44.90, 2);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("frango", 29.85, 3);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("premium steak", 150.80, 4);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("vaca", 78.50, 1);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("galeto", 35.80, 3);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("prime steak", 195.39, 4);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("importada", 248.39, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%M%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.nome = "premium steak";