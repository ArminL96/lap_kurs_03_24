<?php
    require_once('includes.php');
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $projectName = $_POST['project_name'] ?? '';
        $teamId = $_POST['team'] ?? '';
        $bonus = $_POST['bonus'] ?? '';

        if (empty($projectName) || empty($teamId) || empty($bonus)) {
            echo "Please fill out all fields.";
            exit;
        }

        $stmt = $pdo->prepare("INSERT INTO project (name, ID_team, bonus) VALUES (:name, :teamId, :bonus)");
        $stmt->bindParam(':name', $projectName);
        $stmt->bindParam(':teamId', $teamId);
        $stmt->bindParam(':bonus', $bonus);
        $stmt->execute();

        echo "Project added successfully!";
    }
?>
