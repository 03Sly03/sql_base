-- Active: 1692171818213@@127.0.0.1@3306

/***************************************

MANIPULATION DES BASES DE DONNEES

***************************************/

-- Création d'une base de données si celle-ci n'existe PASSWORD

CREATE DATABASE IF NOT EXISTS entreprise_demo;

-- Permet d'afficher toutes les bases de données
SHOW DATABASES;

-- suppression d'une base de données si celle-ci existe
DROP DATABASE IF EXISTS entreprise_demo;

-- utiliser la base de données
USE entreprise_demo;

/***************************************

MANIPULATION DES TABLES

***************************************/
/*
CREATE TABLE nom_de_la_table
(
    colonne1 type_donnees, -- prenom VARCHAR(50)
    colonne2 type_donnees, -- nom VARCHAR(50)
    colonne3 type_donnees, -- date_naissance DATE NOT NUL
    colonne4 type_donnees, -- pays VARCHAR(255)
)
*/

-- Création d'une table "service" si elle n'existe pas
CREATE TABLE IF NOT EXISTS service
(
    service_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    libelle VARCHAR(150) NOT NULL
);

-- Création d'une table "salarie" si elle n'existe pas
CREATE TABLE IF NOT EXISTS salarie
(
    salarie_id INT NOT NULL AUTO_INCREMENT, -- clé primaire qui s'auto-incrémente
    prenom VARCHAR(50) NOT NULL, -- Obligation de saisir une valeur
    nom VARCHAR(50) NOT NULL,
    age INT NOT NULL CHECK(age > 18), -- vérifier si majeur
    salaire INT NOT NULL DEFAULT 1500,
    service_id INT NOT NULL, -- ajour de la colonne pour la clé étrangère
    PRIMARY KEY(salarie_id),
    CONSTRAINT fk_service_salarie_service_id FOREIGN KEY(service_id) REFERENCES service(service_id)
);

-- Affiche les tables de la base de données
SHOW TABLES;

-- Afficher le détail des colonnes de la base de données
SHOW COLUMNS FROM salarie;
SHOW COLUMNS FROM service;

ALTER TABLE service
    ADD COLUMN date_modification DATETIME;

ALTER TABLE service
    MODIFY COLUMN date_modification DATE;
