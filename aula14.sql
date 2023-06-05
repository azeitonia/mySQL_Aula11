/* para entrar no mysql no cmd: mySQL -u aluno -p || senha: senacrs */
/* no pc de casa usa root ao inves de aluno || em casa se n tiver senha só dar enter */

/* cria uma database chamada aula14 e nela cria uma tabela chamada drinks que já contém preco e nome */

create database if not exists aula14;
create database aula14;
use aula14;

create table drinks
(
    preco DECIMAL(9,2),
    nome VARCHAR(40)
);

/* altera a tabela drinks adicionando uma coluna chamada id e diz q é chave primaria */

DESC drinks;

ALTER TABLE drinks
ADD COLUMN id INT FIRST,
ADD PRIMARY KEY(id);

DESC drinks;

/* altera a tabela drinks e adiciona uma coluna chamada notas depois da coluna preco */

DESC drinks;

ALTER TABLE drinks
ADD COLUMN nota INT NOT NULL after preco;

DESC drinks;

/* altera a tabela drinks e renomeia ela para bebidas e mostra as tabelas que tem */

ALTER TABLE drinks
RENAME TO bebidas;

SHOW TABLES;

/* muda o campo descricao do "nome" para varchar(50) not null, o CHANGE permite mudar o nome e a descrição */

DESC bebidas;

ALTER TABLE bebidas
CHANGE COLUMN nome descricao VARCHAR(50) NOT NULL;

DESC bebidas;


/* ----------------------------------------------TRABALHO--------------------------------------------------- */

create database if not exists trabalho;
create database trabalho;
use trabalho;

create table veiculo
(
    cor VARCHAR(15),
    ano VARCHAR(4),
    fabricante VARCHAR(20),
    mod_ VARCHAR(20),
    valordecusto DECIMAL(9,2)
);

SHOW TABLES;

INSERT INTO veiculo (cor, ano, fabricante, mod_, valordecusto) VALUES ('Prata','1998','Porsche','Boxter',17992.54);
INSERT INTO veiculo (cor, ano, fabricante, mod_, valordecusto) VALUES (NULL,'2000','Jaguar','XJ',15995.00);
INSERT INTO veiculo (cor, ano, fabricante, mod_, valordecusto) VALUES ('Vermelho','2002','Cadillac','Escalade',40215.90);

SELECT * FROM veiculo;

DESC veiculo;

ALTER TABLE veiculo
ADD COLUMN id INT FIRST;

DESC veiculo;

ALTER TABLE veiculo
ADD COLUMN chassi VARCHAR(30) AFTER id;

DESC veiculo;

ALTER TABLE veiculo
CHANGE COLUMN mod_ modelo VARCHAR(20);

ALTER TABLE veiculo
MODIFY COLUMN modelo VARCHAR(20) AFTER chassi;

ALTER TABLE veiculo
MODIFY COLUMN fabricante VARCHAR(20) AFTER chassi;

DESC veiculo;

ALTER TABLE veiculo
CHANGE COLUMN valordecusto valor DECIMAL(9, 2);

DESC veiculo;

SHOW * FROM veiculo;

INSERT INTO veiculo (id, chassi) VALUES ('1','RNKLK66N33G213481');
INSERT INTO veiculo (id, chassi) VALUES ('2','SAEDA44B175B04113');
INSERT INTO veiculo (id, chassi) VALUES ('3','3GYEK63NT2G280668');

SHOW * FROM veiculo;
