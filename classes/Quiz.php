<?php
namespace Quiz;

class Quiz {
    public static function checkAnswers($userAnswers): array
    {
        $pdo = Database::getInstance();
        $score = 0;
        $totalQuestions = count($userAnswers);

        foreach ($userAnswers as $questionId => $answerId) {
            $stmt = $pdo->prepare("SELECT is_correct FROM answers WHERE id = ?");
            $stmt->execute([$answerId]);
            $result = $stmt->fetch(\PDO::FETCH_ASSOC);

            if ($result && $result["is_correct"]) {
                $score++;
            }
        }

        return [$score, $totalQuestions];
    }
}
