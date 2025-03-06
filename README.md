# Quiz App

QuizApp est une application web simple de quiz développée en PHP orienté objet, JavaScript vanilla et MySQL.

## Description
L'application permet de répondre à un quiz de quelques questions. 
Une fois les réponses soumises, le score est calculé et affiché à l'utilisateur.

## Technologies utilisées
- PHP vanilla (POO)
- MySQL
- HTML/CSS
- JavaScript vanilla
- Composer
- Docker (optionnel)

## Prérequis
- PHP >= 8.0
- MySQL
- Composer
- Serveur Apache ou tout autre serveur compatible

## Installation

1. **Cloner le dépôt et accéder au répertoire du projet** :
```bash
git clone https://github.com/Isabelle-RJ/quiz-app.git
cd quiz-app
```

2. **Installer les dépendances PHP avec Composer** :
```bash
composer install
```
Et mettre à jour les dépendances :
```bash
composer dump-autoload 
```

3. **Configurer la base de données** :
- Créer une base de données MySQL
- Importer le fichier `quizapp.sql`
- Renommer le fichier `.env.example` en `.env`
- Remplir les informations de connexion à la base de données dans le fichier `.env`

Exemple :
```
DB_HOST=localhost
DB_NAME=quizapp
DB_USER=votrenomutilisateur
DB_PASS=votremotdepasse
```

4. **Lancer l'application** :
   Si vous utilisez Docker, un fichier `docker-compose.yml` peut être ajouté pour lancer l'application directement.
   Sinon, démarrez votre serveur local (Apache ou autre).

Ou dans le terminal :
```bash
php -S localhost:8000 -t public/
```
Puis accédez à l'application via :
```bash
http://localhost:8000/
```

## Fonctionnalités
- Affichage des questions
- Soumission des réponses
- Calcul automatique du score
- Affichage des résultats

## Arborescence du projet
```bash
quiz-app/
├── classes/           # Classes PHP
│   ├── Autoloader.php
│   ├── Database.php
│   ├── Question.php
│   └── Quiz.php
├── public/           # Fichiers publics (CSS, JS)
│   ├── js/
│   │   └── script.js
│   ├── css/
│   │   └── style.css
├── vendor/           # Dépendances
├── .env              # Variables d'environnement
├── composer.json     # Dépendances de projet
└── quizapp.sql       # Fichier de base de données
```

## Auteur
Isabelle Jurain Radermecker

## Licence
Aucune licence spécifique pour ce projet.

