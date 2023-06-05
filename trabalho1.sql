/* ----------------------------------------------TRABALHO--------------------------------------------------- */

create database if not exists trabalho1;
create database trabalho1;
use trabalho1;

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

SELECT * FROM veiculo;

ALTER TABLE veiculo

UPDATE veiculo SET id = 1 WHERE ano = '1998';
UPDATE veiculo SET id = 2 WHERE ano = '2000';
UPDATE veiculo SET id = 3 WHERE ano = '2002';

SELECT * FROM veiculo;

UPDATE veiculo SET chassi = 'RNKLK66N33G213481' WHERE ano = '1998';
UPDATE veiculo SET chassi = 'SAEDA44B175B04113' WHERE ano = '2000';
UPDATE veiculo SET chassi = '3GYEK63NT2G280668' WHERE ano = '2002';

SELECT * FROM veiculo;

ALTER TABLE veiculo
ADD PRIMARY KEY(id);

DESC veiculo;

ALTER TABLE veiculo
MODIFY COLUMN fabricante VARCHAR(50);

DESC veiculo;


create table dono
(
    cpf VARCHAR(30),
    nome VARCHAR(40),
    telefone VARCHAR(20),
    cidade VARCHAR(30)
);

INSERT INTO dono (cpf, nome, telefone, cidade) VALUES ('048.930.940-25','Maria Antônia Soares Coelho Fialho','(53)999421348','Pelotas');
INSERT INTO dono (cpf, nome, telefone, cidade) VALUES ('032.523.470-16','Natanael Vasconcelos Galli','(53)999662467','Pelotas');
INSERT INTO dono (cpf, nome, telefone, cidade) VALUES ('080.020.710-44','Luana Soares Coelho','(53)999392452','Pelotas');

ALTER TABLE dono
ADD COLUMN id INT(10) NOT NULL,
ADD PRIMARY KEY(id);

ALTER TABLE dono
MODIFY id INT(10) AUTO_INCREMENT;

ALTER TABLE dono
MODIFY COLUMN id INT(10) FIRST;

ALTER TABLE dono
RENAME TO pessoa;

TRUNCATE pessoa;

INSERT INTO pessoa (cpf, nome, telefone, cidade) VALUES ('048.930.940-25','Maria Antônia Soares Coelho Fialho','(53)999421348','Pelotas');
INSERT INTO pessoa (cpf, nome, telefone, cidade) VALUES ('032.523.470-16','Natanael Vasconcelos Galli','(53)999662467','Pelotas');
INSERT INTO pessoa (cpf, nome, telefone, cidade) VALUES ('080.020.710-44','Luana Soares Coelho','(53)999392452','Pelotas');

ALTER TABLE pessoa
ADD COLUMN id_veiculo VARCHAR(30);

INSERT INTO pessoa (cpf, nome, telefone, cidade, id_veiculo) VALUES ('022.930.940-25','Mario Antônio Soares Coelho Fialho','(53)991421348','Pelotas','1');
INSERT INTO pessoa (cpf, nome, telefone, cidade, id_veiculo) VALUES ('023.523.470-16','Natanaela Vasconcelos Galli','(53)991662467','Pelotas','2');
INSERT INTO pessoa (cpf, nome, telefone, cidade, id_veiculo) VALUES ('024.020.710-44','Luano Soares Coelho','(53)991392452','Pelotas','3');
