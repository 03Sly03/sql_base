-- Active: 1692004206472@@127.0.0.1@3307@entreprise_demo

CREATE TABLE IF NOT EXISTS adresse
(
    adresse_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rue VARCHAR(150) NOT NULL,
    town VARCHAR(100) NOT NULL,
    code_postal VARCHAR(100)
    personne_id INT NOT NULL,
    CONSTRAINT fk_adresse_personne_personne_id FOREIGN KEY(personne_id) REFERENCES personne(personne_id)
);

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

CREATE TABLE IF NOT EXISTS compte
(
    compte_id INT NOT NULL PRIMARY KEY,
    pseudo VARCHAR(50),
    mot_de_passe VARCHAR(50),
    email VARCHAR(255) UNIQUE,
    date_creation DATETIME,
    derniere_connexion VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS role
(
    role_id INT NOT NULL PRIMARY KEY,
    libelle VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS compte_role
(
    compte_id INT NOT NULL PRIMARY KEY,
    role_id INT NOT NULL PRIMARY KEY,
    date_ajout DATETIME DEFAULT NOW(),
    CONSTRAINT fk_compte_role_compte_compte_id FOREIGN KEY (compte_id) REFERENCES compte(compte_id),
    CONSTRAINT fk_compte_role_role_role_id FOREIGN KEY(role_id) REFERENCES role(role_id) 
);

/***********************

EXERCICE 3 

************************/

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
    telephone VARCHAR(50) UNIQUE,
    numero_de_classe INT NOT NULL,
    date_obtention_diplome DATETIME NOT NULL
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
    MODIFY COLUMNE date_obtention_diplome DATETIME NOT NULL;