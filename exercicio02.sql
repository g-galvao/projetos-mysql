-- > Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
CREATE DATABASE db_ecommerce;

USE db_ecommerce;

-- > Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
CREATE TABLE tb_produtos (
		id BIGINT AUTO_INCREMENT,
        nome VARCHAR(225) NOT NULL,
        quantidade INT,
        preco DECIMAL (6,2),
        marca VARCHAR(125),
        PRIMARY KEY (id)
);

ALTER TABLE tb_produtos MODIFY preco DECIMAL (7,2);

-- > Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO tb_produtos (nome, quantidade, preco, marca)
VALUES ("MacBook", 100, 50435.34, "Apple");

INSERT INTO tb_produtos (nome, quantidade, preco, marca)
VALUES ("Monitor", 500, 1849.35, "Samsung");

INSERT INTO tb_produtos (nome, quantidade, preco, marca)
VALUES ("Teclado", 850, 145.24, "Logitech");

INSERT INTO tb_produtos (nome, quantidade, preco, marca)
VALUES ("Mouse", 845, 284.43, "Dell");

INSERT INTO tb_produtos (nome, quantidade, preco, marca)
VALUES ("Cadeira Gamer", 50, 489.90, "Otello");

INSERT INTO tb_produtos (nome, quantidade, preco, marca)
VALUES ("Headphone", 350, 255.55, "JBL");

INSERT INTO tb_produtos (nome, quantidade, preco, marca)
VALUES ("Apoiador de Pés", 150, 25.90, "OK");

INSERT INTO tb_produtos (nome, quantidade, preco, marca)
VALUES ("Moldem", 240, 465.58, "VIVO");

SELECT * FROM tb_produtos;

-- > Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
SELECT * FROM tb_produtos WHERE preco > 500;

-- > Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
SELECT * FROM tb_produtos WHERE preco < 500;

-- > Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_produtos SET preco = 300.00 WHERE id = 8;