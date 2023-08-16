-- Active: 1692171818213@@127.0.0.1@3306@exo3
CREATE DATABASE IF NOT EXISTS exo3;

DROP DATABASE exo3;

USE exo3;

CREATE TABLE IF NOT EXISTS professeur
(
    professeur_id INT NOT NULL PRIMARY KEY,
    prenom VARCHAR(100) NOT NULL,
    nom VARCHAR(100) NOT NULL,
    numero_de_classe INT NOT NULL,
    numero_de_departement INT NOT NULL,
    email VARCHAR(255) UNIQUE,
    telephone VARCHAR(50) UNIQUE
);

CREATE TABLE IF NOT EXISTS etudiant
(
    etudiant_id INT NOT NULL PRIMARY KEY,
    prenom VARCHAR(100) NOT NULL,
    nom VARCHAR(100) NOT NULL,
    telephone VARCHAR(50) NOT NULL UNIQUE,
    numero_de_classe INT NOT NULL,
    date_obtention_diplome DATETIME
);


CREATE TABLE IF NOT EXISTS professeur_etudiant
(
    professeur_id INT NOT NULL,
    etudiant_id INT NOT NULL,
    PRIMARY KEY (professeur_id, etudiant_id),
    FOREIGN KEY (professeur_id) REFERENCES professeur(professeur_id),
    FOREIGN KEY (etudiant_id) REFERENCES etudiant(etudiant_id)
);

ALTER TABLE etudiant
    MODIFY COLUMN date_obtention_diplome DATETIME NOT NULL;