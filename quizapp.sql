-- Suppression des tables si elles existent déjà
DROP TABLE IF EXISTS answers;
DROP TABLE IF EXISTS questions;

-- Création de la table des questions
CREATE TABLE IF NOT EXISTS questions
(
    id       CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    question TEXT NOT NULL,
    unique key (id)
);

-- Création de la table des réponses
CREATE TABLE IF NOT EXISTS answers
(
    id          CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    question_id CHAR(36) NOT NULL,
    answer      TEXT     NOT NULL,
    is_correct  BOOLEAN              DEFAULT FALSE,
    FOREIGN KEY (question_id) REFERENCES questions (id) ON DELETE CASCADE
);

-- Insertion des questions (sans préciser l'id pour respecter l'auto-incrémentation)
INSERT INTO questions (id, question)
VALUES ('823d2a9f-7c93-4877-8619-f094e6f5305a', 'Quelle est la capitale de la France ?'),
       ('8911efc9-434d-415d-8066-3a0509336c59', 'Quel est le résultat de 2 + 2 ?'),
       ('4dcfac34-acb0-4996-bbec-703e3d86c3a0', 'Quelle est la couleur du ciel ?'),
       ('6c662987-6b62-4ff3-a55a-7ef5957bd32b', 'Quelle est la capitale du Japon ?'),
       ('18afeec4-68a4-454f-834b-d9d871f7f15e', 'Quelle est la couleur de la mer ?'),
       ('e0744892-0336-412b-8398-d7e0e24752c2', 'Quelle est la couleur du cheval blanc de Henri IV ?'),
       ('29ab030c-241a-4eac-89ab-5e43910d2b92', 'Combien de temps a duré la guerre de 100 ans ?'),
       ('21478bb0-d445-4764-8a20-47ad223c6cd8', 'Quelle est la racine carré de 25 ?');

-- Insertion des réponses (toutes les questions)
INSERT INTO answers (question_id, answer, is_correct)
VALUES
-- Réponses pour la question 1
('823d2a9f-7c93-4877-8619-f094e6f5305a', 'Paris', 1),
('823d2a9f-7c93-4877-8619-f094e6f5305a', 'Londres', 0),
('823d2a9f-7c93-4877-8619-f094e6f5305a', 'Berlin', 0),
('823d2a9f-7c93-4877-8619-f094e6f5305a', 'Madrid', 0),

-- Réponses pour la question 2
('8911efc9-434d-415d-8066-3a0509336c59', '3', 0),
('8911efc9-434d-415d-8066-3a0509336c59', '4', 1),
('8911efc9-434d-415d-8066-3a0509336c59', '5', 0),
('8911efc9-434d-415d-8066-3a0509336c59', '6', 0),

-- Réponses pour la question 3
('4dcfac34-acb0-4996-bbec-703e3d86c3a0', 'Bleu', 1),
('4dcfac34-acb0-4996-bbec-703e3d86c3a0', 'Vert', 0),
('4dcfac34-acb0-4996-bbec-703e3d86c3a0', 'Rouge', 0),
('4dcfac34-acb0-4996-bbec-703e3d86c3a0', 'Jaune', 0),

-- Réponses pour la question 4
('6c662987-6b62-4ff3-a55a-7ef5957bd32b', 'Tokyo', 1),
('6c662987-6b62-4ff3-a55a-7ef5957bd32b', 'Pékin', 0),
('6c662987-6b62-4ff3-a55a-7ef5957bd32b', 'Séoul', 0),
('6c662987-6b62-4ff3-a55a-7ef5957bd32b', 'Bangkok', 0),

-- Réponses pour la question 5
('18afeec4-68a4-454f-834b-d9d871f7f15e', 'Bleue', 1),
('18afeec4-68a4-454f-834b-d9d871f7f15e', 'Verte', 0),
('18afeec4-68a4-454f-834b-d9d871f7f15e', 'Rouge', 0),
('18afeec4-68a4-454f-834b-d9d871f7f15e', 'Jaune', 0),

-- Réponses pour la question 6
('e0744892-0336-412b-8398-d7e0e24752c2', 'Blanche', 1),
('e0744892-0336-412b-8398-d7e0e24752c2', 'Noire', 0),
('e0744892-0336-412b-8398-d7e0e24752c2', 'Grise', 0),
('e0744892-0336-412b-8398-d7e0e24752c2', 'Marron', 0),

-- Réponses pour la question 7
('29ab030c-241a-4eac-89ab-5e43910d2b92', '116 ans', 1),
('29ab030c-241a-4eac-89ab-5e43910d2b92', '100 ans', 0),
('29ab030c-241a-4eac-89ab-5e43910d2b92', '50 ans', 0),
('29ab030c-241a-4eac-89ab-5e43910d2b92', '200 ans', 0),

-- Réponses pour la question 8
('21478bb0-d445-4764-8a20-47ad223c6cd8', '5', 1),
('21478bb0-d445-4764-8a20-47ad223c6cd8', '2', 0),
('21478bb0-d445-4764-8a20-47ad223c6cd8', '10', 0),
('21478bb0-d445-4764-8a20-47ad223c6cd8', '4', 0);

-- Suppression des données par selection d'id :
# SELECT questions.id, questions.question
# FROM questions
# JOIN answers
# ON questions.id = question_id
# where answer='5' AND is_correct=1;
#
# -- Suppression de la question /réponse sélectionnée :
# DELETE FROM questions
# WHERE id IN (
# SELECT question_id FROM answers WHERE answer = '5' and is_correct=1
# );
