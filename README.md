# QuizApp

QuizApp est une application web simple de quiz développée en PHP orienté objet, JavaScript vanilla et MySQL.

## Fonctionnalités

* Affichage de questions à choix multiples.
* Une seule réponse correcte par question.
* Calcul du score à la fin du quiz.
* Interface utilisateur simple et intuitive.

## Prérequis

* PHP 7.4 ou supérieur
* MySQL ou MariaDB
* Composer (pour gérer les dépendances)

## Installation

1.  Clonez le dépôt :

    ```bash
    git clone [https://github.com/votre-utilisateur/QuizApp.git](https://www.google.com/search?q=https://github.com/votre-utilisateur/QuizApp.git)
    ```

2.  Accédez au répertoire du projet :

    ```bash
    cd QuizApp
    ```

3.  Installez les dépendances avec Composer :

    ```bash
    composer install
    ```

4.  Créez un fichier `.env` à la racine du projet et remplissez-le avec vos informations de connexion à la base de données (voir `.env.example`).

5.  Importez le fichier SQL `quizapp.sql` dans votre base de données pour créer la table `questions`.

6.  Démarrez le serveur de développement PHP :

    ```bash
    php -S localhost:8000
    ```

7.  Ouvrez votre navigateur et accédez à `http://localhost:8000`.

## Configuration

* Modifiez le fichier `.env` pour configurer les informations de connexion à la base de données.
* Ajoutez ou modifiez les questions dans la table `questions` de votre base de données.
* Modifiez le fichier `style.css` pour personnaliser l'apparence de l'application.

## Structure du projet

```plaintext
QuizApp/
├── .env
├── .env.example
├── .gitignore
├── README.md
├── index.php
├── classes/
│   ├── Autoloader.php
│   ├── Database.php
│   ├── Question.php
│   └── Quiz.php
├── js/
│   └── script.js
└── style.css
```
## Auteur

Isabelle Radermecker Jurain