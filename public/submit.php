<?php
require_once __DIR__ . '/../vendor/autoload.php';

use Quiz\Quiz;


if ($_SERVER["REQUEST_METHOD"] === "POST") {
    [$score, $totalQuestions] = Quiz::checkAnswers($_POST);

    echo "<h1>Votre score : $score / $totalQuestions</h1>";
    echo "<a href='index.php'>Recommencer</a>";
}
