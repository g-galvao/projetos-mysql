create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categorias(
	id bigint auto_increment,
    nome varchar(125) not null,
    primary key(id)
);

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(225) not null,
    preco decimal(6,2) not null,
    quantidade int,
    categorias_id bigint,
    primary key (id),
    foreign key (categorias_id) references tb_categorias(id)
);

INSERT INTO tb_categorias(nome)
VALUES ("casa");
INSERT INTO tb_categorias(nome)
VALUES ("papelaria");
INSERT INTO tb_categorias(nome)
VALUES ("alimentos");
INSERT INTO tb_categorias(nome)
VALUES ("bebidas");
INSERT INTO tb_categorias(nome)
VALUES ("decoração");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("geladeira", 1000.00, 1);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("canetas", 30.00, 2);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("snacks", 10.50, 3);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("suco natural", 8.50, 4);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("mini bolo", 9.50, 3);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("marca texto", 3.80, 2);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("fogão", 899.90, 1);
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("giz de cera", 6.99, 2);
insert into tb_produtos(nome, preco, categorias_id)
values ("quadros", 19.90, 5);

SELECT * FROM tb_produtos
WHERE preco > 50.00;

SELECT * FROM tb_produtos
WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos
WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.nome = "papelaria";