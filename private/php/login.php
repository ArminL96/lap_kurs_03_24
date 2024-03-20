<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["username"]) && isset($_POST["password"])) {
        $dummy_username = "123";
        $dummy_password = "123";

        if ($_POST["username"] === $dummy_username && $_POST["password"] === $dummy_password) {
            $_SESSION["loggedin"] = true;
            $_SESSION["username"] = $_POST["username"];
            header("location: ../../index.php");
            exit;
        } else {
            header("location: ../../index.php");
            exit;
        }
    }
}
?>
