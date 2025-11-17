-- ======================================================
-- 01_create_tables.sql
-- Criação das tabelas do projeto Clínica Veterinária
-- Banco: MySQL
-- ======================================================

CREATE DATABASE IF NOT EXISTS clinica_veterinaria;
USE clinica_veterinaria;

CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    endereco VARCHAR(150)
);

CREATE TABLE Animal (
    idAnimal INT AUTO_INCREMENT PRIMARY KEY,
    nomeAnimal VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raca VARCHAR(50),
    idade INT,
    idCliente INT NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Veterinario (
    idVeterinario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crmv VARCHAR(20) NOT NULL UNIQUE,
    especialidade VARCHAR(100)
);

CREATE TABLE Atendimento (
    idAtendimento INT AUTO_INCREMENT PRIMARY KEY,
    dataAtendimento DATE NOT NULL,
    descricao TEXT,
    idAnimal INT NOT NULL,
    idVeterinario INT NOT NULL,
    FOREIGN KEY (idAnimal) REFERENCES Animal(idAnimal),
    FOREIGN KEY (idVeterinario) REFERENCES Veterinario(idVeterinario)
);

CREATE TABLE Vacina (
    idVacina INT AUTO_INCREMENT PRIMARY KEY,
    nomeVacina VARCHAR(100) NOT NULL,
    dataAplicacao DATE NOT NULL,
    idAnimal INT NOT NULL,
    FOREIGN KEY (idAnimal) REFERENCES Animal(idAnimal)
);
