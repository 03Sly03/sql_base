-- Active: 1692171818213@@127.0.0.1@3306

-- Cr�ation d'une table "service"
CREATE TABLE service
(
    service_id INT NOT NULL PRIMARY KEY,
    libelle VARCHAR(150) NOT NULL
);

-- Cr�ation d'une table "salarie"
CREATE TABLE salarie
(
    salarie_id INT NOT NULL, -- cl� primaire qui s'auto-incr�mente
    prenom VARCHAR(50) NOT NULL, -- Obligation de saisir une valeur
    nom VARCHAR(50) NOT NULL,
    age INT NOT NULL CHECK(age > 18), -- v�rifier si majeur
    salaire INT NOT NULL DEFAULT 1500,
    service_id INT NOT NULL, -- ajout de la colonne pour la cl� �trang�re
    PRIMARY KEY(salarie_id),
    CONSTRAINT fk_service_salarie_service_id FOREIGN KEY(service_id) REFERENCES service(service_id)
);
