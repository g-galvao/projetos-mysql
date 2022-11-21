-- Crie um banco de dados para um serviço de um Games Online. 
-- O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
-- O sistema trabalhará com as informações dos personagens do jogo. 
-- O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, 
-- relevantes para classificar os personagens do Game Online.
CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(125) NOT NULL,
    descricao VARCHAR(125),
    PRIMARY KEY (id)
);

-- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    descricao VARCHAR(255),
    data_criacao DATE,
    classes_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
); -- Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.

-- Insira 5 registros na tabela tb_classes.
INSERT INTO tb_classes (nome)
VALUES ("Classe A");
INSERT INTO tb_classes (nome)
VALUES ("Classe B");
INSERT INTO tb_classes (nome)
VALUES ("Classe C");
INSERT INTO tb_classes (nome)
VALUES ("Classe D");
INSERT INTO tb_classes (nome)
VALUES ("Classe E");

-- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
VALUES ("Uno", 1000, 8000, 5);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
VALUES ("Dos", 2000, 7000, 4);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
VALUES ("Tres", 3000, 6000, 3);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
VALUES ("Cuatro", 4000, 5000, 2);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
VALUES ("Cinco", 5000, 4000, 1);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
VALUES ("Seis", 6000, 3000, 2);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
VALUES ("Siete", 7000, 2000, 3);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
VALUES ("Ocho", 8000, 1000, 4);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens
WHERE ataque > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens
WHERE ataque BETWEEN 1000 AND 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens
WHERE nome LIKE "%C%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, 
-- onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.nome = "Classe C";