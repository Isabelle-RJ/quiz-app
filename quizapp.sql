-- Suppression de la table existante (si elle existe)
DROP TABLE IF EXISTS questions;

-- Création de la table questions
CREATE TABLE questions
(
    id               INT AUTO_INCREMENT PRIMARY KEY,
    question         VARCHAR(255) NOT NULL,
    reponse1         VARCHAR(255) NOT NULL,
    reponse2         VARCHAR(255) NOT NULL,
    reponse3         VARCHAR(255) NOT NULL,
    reponse4         VARCHAR(255) NOT NULL,
    reponse_correcte VARCHAR(255) NOT NULL
);

-- Insertion de quelques questions de test
INSERT INTO questions (question, reponse1, reponse2, reponse3, reponse4, reponse_correcte)
VALUES ('Quelle est la capitale de la France ?', 'Berlin', 'Madrid', 'Paris', 'Rome', 'Paris'),
       ('Quel est le plus grand océan du monde ?', 'Océan Atlantique', 'Océan Indien', 'Océan Arctique',
        'Océan Pacifique', 'Océan Pacifique'),
       ('Quel est le plus haut sommet du monde ?', 'Mont Blanc', 'Kilimandjaro', 'Everest', 'Denali', 'Everest'),
       ('Quel langage de programmation est utilisé pour le développement web côté serveur ?', 'JavaScript', 'Python',
        'HTML', 'CSS', 'Python'),
       ('Quelle est la capitale du Japon ?', 'Séoul', 'Pékin', 'Tokyo', 'Bangkok', 'Tokyo');