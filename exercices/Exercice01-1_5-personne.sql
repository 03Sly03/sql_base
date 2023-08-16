-- Active: 1692171818213@@127.0.0.1@3306@exo1

CREATE DATABASE IF NOT EXISTS exo1;

USE exo1;

CREATE TABLE IF NOT EXISTS adresse
(
    adresse_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rue VARCHAR(150) NOT NULL,
    town VARCHAR(100) NOT NULL,
    code_postal VARCHAR(100)
);

DROP TABLE adresse;
DROP TABLE personne;

CREATE TABLE IF NOT EXISTS personne
(
    personne_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(50),
    prenom VARCHAR(50),
    nom VARCHAR(50),
    telephone VARCHAR(50),
    mail VARCHAR(100) UNIQUE,
    adresse_id INT NOT NULL,
    CONSTRAINT fk_personne_adresse_adresse_id FOREIGN KEY(adresse_id) REFERENCES adresse(adresse_id)
);
