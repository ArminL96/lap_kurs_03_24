<?php
    require_once('includes.php');
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $teamname = $_POST['teamname'] ?? '';
        $selectedMembers = $_POST['selectedMembers'] ?? [];

        if (empty($teamname) || empty($selectedMembers) || count($selectedMembers) < 3 || count($selectedMembers) > 12) {
            echo "Team name must be provided, and the team must have between 3 and 12 selected members.";
            exit;
        }

        $stmt = $pdo->prepare("INSERT INTO team (name) VALUES (:name)");
        $stmt->bindParam(':name', $teamname);
        $stmt->execute();
        $teamId = $pdo->lastInsertId();

        $stmt = $pdo->prepare("INSERT INTO personteam (ID_person, ID_team) VALUES (:personId, :teamId)");
        foreach ($selectedMembers as $memberId) {
            $stmt->bindParam(':personId', $memberId);
            $stmt->bindParam(':teamId', $teamId);
            $stmt->execute();
        }

        echo "Team created successfully!";
    }
?>
