<?php
namespace Quiz;

use Quiz\Database;
use PDO;

class Question {
    public static function getAll(): array
    {
        $pdo = Database::getInstance();
        $stmt = $pdo->query("SELECT * FROM questions");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getAnswers($questionId): array
    {
        $pdo = Database::getInstance();
        $stmt = $pdo->prepare("SELECT * FROM answers WHERE question_id = ?");
        $stmt->execute([$questionId]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
