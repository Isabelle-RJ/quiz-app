<?php
require_once __DIR__ . '/../vendor/autoload.php';

use Quiz\Question;

$questions = Question::getAll();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QuizApp</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="quiz-container">
    <h1>Bienvenue au QuizApp !</h1>
    <form id="quiz-form" action="submit.php" method="POST">
        <?php foreach ($questions as $question) : ?>
            <div class='question'>
                <p><?= htmlspecialchars($question["question"]) ?></p>
                <?php $answers = Question::getAnswers($question["id"]); ?>
                <?php foreach ($answers as $answer) : ?>
                    <label>
                        <input type="radio" name="q<?= $question["id"] ?>" value="<?= $answer["id"] ?>" required>
                        <?= htmlspecialchars($answer["answer"]) ?>
                    </label><br>
                <?php endforeach; ?>
            </div>
        <?php endforeach; ?>
        <button type="submit">Soumettre</button>
    </form>
</div>
<script src="assets/script.js"></script>
</body>
</html>
