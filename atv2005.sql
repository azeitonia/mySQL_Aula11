create database if not exists Avenida;
use Avenida;

create table departamento(
    codigo INT,
    nome VARCHAR(45) NOT NULL,
    telefone VARCHAR(15),
    PRIMARY KEY(codigo)
);

create table empregado(
    matricula INT,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(100),
    salario DECIMAL (10,2),
    matSupervisor INT,
    codDep INT NOT NULL,
    FOREIGN KEY(matSupervisor) REFERENCES empregado(matricula),
    FOREIGN KEY(codDep) REFERENCES departamento(codigo),
    PRIMARY KEY(matricula)
);

create table projeto(
    codigo  INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    local VARCHAR(100),
    codDep INT(11) NOT NULL,
    FOREIGN KEY(codDep) REFERENCES departamento(codigo),
    PRIMARY KEY(codigo)
);

create table dependente(
    id INT,
    matEmp INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    data DATE,
    FOREIGN KEY(matEmp) REFERENCES empregado(matricula),
    PRIMARY KEY(id)
);

create table alocacao(
    matEmp INT NOT NULL,
    codProj INT NOT NULL,
    horas INT,
    FOREIGN KEY(matEmp) REFERENCES empregado(matricula),
    FOREIGN KEY(codProj) REFERENCES projeto(codigo),
    PRIMARY KEY(matEmp, codProj)
);