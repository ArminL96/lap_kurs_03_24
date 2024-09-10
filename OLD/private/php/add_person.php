<?php
    require_once('includes.php');

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $firstname = $_POST['firstname'] ?? '';
        $lastname = $_POST['lastname'] ?? '';
        $role_id = $_POST['role'] ?? '';

        if (empty($firstname) || empty($lastname) || empty($role_id)) {
            echo "Please fill in all fields.";
            exit;
        }

        try {
            $stmt = $pdo->prepare("INSERT INTO Person (firstname, lastname) VALUES (:firstname, :lastname)");
            $stmt->execute(['firstname' => $firstname, 'lastname' => $lastname]);
            $person_id = $pdo->lastInsertId();

            $stmt = $pdo->prepare("INSERT INTO PersonRole (ID_person, ID_role) VALUES (:person_id, :role_id)");
            $stmt->execute(['person_id' => $person_id, 'role_id' => $role_id]);

            echo "Person added successfully.";
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }
    }
?>
