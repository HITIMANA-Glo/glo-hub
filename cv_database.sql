CREATE DATABASE cv_database;

USE cv_database;

CREATE TABLE utilisateur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    mot_de_passe VARCHAR(255),
    photo VARCHAR(255)
);

CREATE TABLE experiences (
    id INT AUTO_INCREMENT PRIMARY KEY,
    utilisateur_id INT,
    entreprise VARCHAR(100),
    poste VARCHAR(100),
    dates VARCHAR(100),
    description TEXT,
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
);

CREATE TABLE formations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    utilisateur_id INT,
    etablissement VARCHAR(100),
    diplome VARCHAR(100),
    dates VARCHAR(100),
    description TEXT,
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
);

CREATE TABLE competences (
    id INT AUTO_INCREMENT PRIMARY KEY,
    utilisateur_id INT,
    competence VARCHAR(100),
    niveau VARCHAR(50),
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
);
