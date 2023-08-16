DROP TABLE personne;

CREATE TABLE personne
(
	personne_id INT IDENTITY(1,1) NOT NULL,
	nom VARCHAR(50) NOT NULL,
	prenom VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	telephone VARCHAR(50) NOT NULL
	PRIMARY KEY (personne_id)
)

-- Insertion des données

INSERT INTO personne (nom, prenom, email, telephone)
VALUES ('Doe', 'John', 'john@doe.fr', '0101010101'),
		('Dacascos', 'Marc', 'marc@dacascos.fr', '0202020202'),
		('Well', 'Ma', 'max@well.fr', '0303030303');

INSERT INTO personne
VALUES ('Doe', 'Jane', 'jane@doe.fr', '0404040404');


--DELETE FROM personne;

DELETE FROM personne
WHERE personne_id=3;