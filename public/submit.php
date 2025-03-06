<?php
require_once __DIR__ . '/../vendor/autoload.php';

use Quiz\Quiz;

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    [$score, $totalQuestions] = Quiz::checkAnswers($_POST);
}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Résultat Quiz</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="quiz-container">
    <h1>Résultat du Quiz</h1>
    <p>Votre score : <strong><?= htmlspecialchars($score) ?> / <?= htmlspecialchars($totalQuestions) ?></strong></p>
    <a href="index.php">
        <button>Recommencer</button>
    </a>
</div>
</body>
</html>
