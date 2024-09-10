<?php
    require_once ('includes.php');

    $stmt = $pdo->query("SELECT * FROM person");
    $person = $stmt->fetchAll(\PDO::FETCH_ASSOC);

    if(!empty($person)) {
        foreach($person as $p) {
            echo '<div>' . $p['firstname'] . ' '.  $p['lastname']. '</div>';
            echo '<br>';
        }
    }

?>