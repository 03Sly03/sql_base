--DELETE FROM personne;
--DELETE FROM adresse;
--ALTER TABLE adresse
    --DROP CONSTRAINT fk_adresse_personne_personne_id;
    --COLUMN personne_id;
--DROP TABLE adresse;
--DROP TABLE personne;

CREATE TABLE adresse
(
    adresse_id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    rue VARCHAR(150) NOT NULL,
    town VARCHAR(100) NOT NULL,
    code_postal VARCHAR(100)
);

CREATE TABLE personne
(
    personne_id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    titre VARCHAR(50),
    prenom VARCHAR(50),
    nom VARCHAR(50),
    telephone VARCHAR(50),
    mail VARCHAR(100) UNIQUE,
    adresse_id INT NOT NULL,
    CONSTRAINT fk_personne_adresse_adresse_id FOREIGN KEY(adresse_id) REFERENCES adresse(adresse_id)
);

ALTER TABLE adresse
    ADD personne_id INT,
    CONSTRAINT fk_adresse_personne_personne_id FOREIGN KEY(personne_id) REFERENCES personne(personne_id);

INSERT INTO adresse (rue, town, code_postal)
VALUES ('de la Creuse', 'Lille', '59000'),
        ('Victor Hugo', 'Lens', '62800'),
        ('Alfred', 'Henin-Beaumont', '62110'),
        ('de la Martinique', 'Lille', '59000'),
        ('de Provence', 'Liévin', '62200'),
        ('du mousqueton', 'Arras', '62000');

INSERT INTO personne (titre, prenom, nom, telephone, mail, adresse_id)
VALUES ('Mr.', 'John', 'Doe', '0303030303', 'john@doe.fr', 1),
        ('Mr.', 'Mac', 'Gill', '0202020202', 'mac@gill.fr', 2),
        ('Mme', 'Jane', 'Doe', '0101010101', 'jane@doe.fr', 3);

DELETE FROM personne
WHERE prenom = 'Mac';

UPDATE personne
SET nom = 'Dinde'
WHERE personne_id = 3;

INSERT INTO personne (titre, prenom, nom, telephone, mail, adresse_id)
VALUES ('Mme.', 'Bernadette', 'Bigou', '0404040404', 'berna@dette.fr', 4),
        ('Mr.', 'Marcus', 'Brody', '0505050505', 'marcus@brody.fr', 5),
        ('Mme', 'Joe', 'Dalton', '0606060606', 'joe@dalton.fr', 6);

ALTER TABLE personne
    ADD salaire INT;

DELETE FROM personne;

INSERT INTO personne (titre, prenom, nom, telephone, mail, adresse_id, salaire)
VALUES ('Mr.', 'John', 'Doe', '0303030303', 'john@doe.fr', 1, 1500),
        ('Mr.', 'Mac', 'Gill', '0202020202', 'mac@gill.fr', 2, 2000),
        ('Mme', 'Jane', 'Doe', '0101010101', 'jane@doe.fr', 3, 1670),
        ('Mme', 'Bernadette', 'Bigou', '0404040404', 'berna@dette.fr', 4, 1326),
        ('Mr.', 'Marcus', 'Brody', '0505050505', 'marcus@brody.fr', 5, 1856),
        ('Mme', 'Joe', 'Dalton', '0606060606', 'joe@dalton.fr', 6, 1289),
        ('Mlle', 'Jeanette', 'Bigou', '0404040404', 'jeane@tte.fr', 4, 1326),
        ('Mlle', 'Héléne', 'Brody', '0505050505', 'helene@brody.fr', 5, 1856),
        ('Mlle', 'Huguette', 'Dalton', '0606060606', 'huguette@dalton.fr', 6, 1289);
    
SELECT *
FROM personne;

SELECT personne.nom, personne.prenom
FROM personne;

SELECT *
FROM personne
ORDER BY nom DESC;

SELECT *
FROM personne
ORDER BY titre;

SELECT *
FROM personne
WHERE mail = 'john@doe.fr';