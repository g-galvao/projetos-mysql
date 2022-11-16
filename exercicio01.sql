CREATE database db_rh_services;
-- > Criando o DB

USE db_rh_services;
-- > Selecionando o DB

CREATE TABLE colaboradores (
	matricula BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(125),
    departamento VARCHAR(125),
    salario DECIMAL,
    data_admissao DATE,
    PRIMARY KEY (matricula)
);
-- > Criando TB

RENAME TABLE colaboradores to tb_colaboradores;
-- > Renomeando TB

-- > Incluindo colaboradores
INSERT INTO tb_colaboradores(nome, cargo, departamento, salario, data_admissao) 
VALUES ("Gabriel", "Software Developer JR", "NeoCamp", 5000.00, "2022-10-03");

INSERT INTO tb_colaboradores(nome, cargo, departamento, salario, data_admissao) 
VALUES ("Renato", "Software Developer SR", "Mercado Pago", 20850.60, "2020-07-01");

INSERT INTO tb_colaboradores(nome, cargo, departamento, salario, data_admissao) 
VALUES ("Wheslley", "Tech Leader", "Mercado Livre", 15500.38, "2020-07-10");

INSERT INTO tb_colaboradores(nome, cargo, departamento, salario, data_admissao) 
VALUES ("Tereza", "Tech Recruiter", "Mercado Livre", 8750.52, "2020-01-01");

INSERT INTO tb_colaboradores(nome, cargo, departamento, salario, data_admissao) 
VALUES ("Ariade", "Software Developer PL", "Mercado Envios", 13000.64, "2015-05-17");

ALTER TABLE tb_colaboradores MODIFY salario decimal(6, 2);

SELECT * FROM tb_colaboradores;
-- > Exibir todes

-- > Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
SELECT * FROM tb_colaboradores
WHERE salario > 2000;

-- > Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
SELECT * FROM tb_colaboradores
WHERE salario < 2000;

-- > Ao término atualize um registro desta tabela através de uma query de atualização.
INSERT INTO tb_colaboradores(nome, cargo, departamento, salario, data_admissao) 
VALUES ("Teste", "Qualquer", "Tanto Faz", 1500.24, "2022-11-16");

UPDATE tb_colaboradores SET nome = "Fulano" WHERE matricula = 6;

-- > 
