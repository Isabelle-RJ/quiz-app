-- Suppression des tables si elles existent déjà
DROP TABLE IF EXISTS answers;
DROP TABLE IF EXISTS questions;

-- Création de la table des questions
CREATE TABLE IF NOT EXISTS questions
(
    id       INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL
);

-- Création de la table des réponses
CREATE TABLE IF NOT EXISTS answers
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    question_id INT  NOT NULL,
    answer      TEXT NOT NULL,
    is_correct  BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (question_id) REFERENCES questions (id) ON DELETE CASCADE
);

-- Insertion des questions (sans préciser l'id pour respecter l'auto-incrémentation)
INSERT INTO questions (question)
VALUES ('Quelle est la capitale de la France ?'),
       ('Quel est le résultat de 2 + 2 ?'),
       ('Quelle est la couleur du ciel ?'),
       ('Quelle est la capitale du Japon ?'),
       ('Quelle est la couleur de la mer ?'),
       ('Quelle est la couleur du cheval blanc de Henri IV ?'),
       ('Combien de temps a duré la guerre de 100 ans ?'),
       ('Quelle est la couleur du cheval blanc de Napoléon ?');

-- Insertion des réponses (toutes les questions)
INSERT INTO answers (question_id, answer, is_correct)
VALUES
-- Réponses pour la question 1
(1, 'Paris', 1),
(1, 'Londres', 0),
(1, 'Berlin', 0),
(1, 'Madrid', 0),

-- Réponses pour la question 2
(2, '3', 0),
(2, '4', 1),
(2, '5', 0),
(2, '6', 0),

-- Réponses pour la question 3
(3, 'Bleu', 1),
(3, 'Vert', 0),
(3, 'Rouge', 0),
(3, 'Jaune', 0),

-- Réponses pour la question 4
(4, 'Tokyo', 1),
(4, 'Pékin', 0),
(4, 'Séoul', 0),
(4, 'Bangkok', 0),

-- Réponses pour la question 5
(5, 'Bleue', 1),
(5, 'Verte', 0),
(5, 'Rouge', 0),
(5, 'Jaune', 0),

-- Réponses pour la question 6
(6, 'Blanche', 1),
(6, 'Noire', 0),
(6, 'Grise', 0),
(6, 'Marron', 0),

-- Réponses pour la question 7
(7, '116 ans', 1),
(7, '100 ans', 0),
(7, '50 ans', 0),
(7, '200 ans', 0),

-- Réponses pour la question 8
(8, 'Blanche', 1),
(8, 'Noire', 0),
(8, 'Grise', 0),
(8, 'Marron', 0);

-- Suppression des données (si nécessaire)
# DELETE
# FROM answers
# WHERE question_id BETWEEN 1 AND 8;

-- Réinitialisation des ID après suppression (évite les décalages)
ALTER TABLE questions
    AUTO_INCREMENT = 1;
ALTER TABLE answers
    AUTO_INCREMENT = 1;
