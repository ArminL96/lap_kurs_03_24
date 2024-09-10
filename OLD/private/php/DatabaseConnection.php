<?php
    $host = 'localhost'; 
    $dbname = 'lap_kurs'; 
    $username = 'root';
    $password = ''; 

    try {
        $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
        
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo '<div class="alert alert-danger" role="alert">Connection failed: ' . $e->getMessage() . '</div>';
        die();
    }
?>