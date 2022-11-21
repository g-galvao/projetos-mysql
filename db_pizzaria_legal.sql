CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(125) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(125) NOT NULL,
    preco DECIMAL(5,2) NOT NULL,
    ingredientes VARCHAR(225),
    quantidade INT,
    tempo_espera INT,
    categorias_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome)
VALUES ("salgada");
INSERT INTO tb_categorias(nome)
VALUES ("doce");
INSERT INTO tb_categorias(nome)
VALUES ("tradicional");
INSERT INTO tb_categorias(nome)
VALUES ("brotinho");
INSERT INTO tb_categorias(nome)
VALUES ("promocional");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas(nome, preco, categorias_id)
VALUES("calabresa", 39.90, 1);
INSERT INTO tb_pizzas(nome, preco, categorias_id)
VALUES("brigadeiro", 49.90, 2);
INSERT INTO tb_pizzas(nome, preco, categorias_id)
VALUES("mista", 29.90, 3);
INSERT INTO tb_pizzas(nome, preco, categorias_id)
VALUES("4 queijos", 19.90, 4);
INSERT INTO tb_pizzas(nome, preco, categorias_id)
VALUES("marguerita", 19.90, 5);
INSERT INTO tb_pizzas(nome, preco, categorias_id)
VALUES("3 queijos", 29.90, 4);
INSERT INTO tb_pizzas(nome, preco, categorias_id)
VALUES("frango", 29.50, 3);
INSERT INTO tb_pizzas(nome, preco, categorias_id)
VALUES("romeu e julieta", 49.50, 2);
INSERT INTO tb_pizzas(nome, preco, categorias_id)
VALUES("4 queijos", 29.90, 4);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas
WHERE preco > 45.00;

SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.nome = "doce";

