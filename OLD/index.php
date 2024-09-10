<?php
    require_once('private/php/includes.php');
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <base href="http://localhost/lap/lap_kurs_03_24/">
        <title>LAP_Kurs</title>
        <link href="vendor/twbs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="public/scss/_custom.scss" rel="stylesheet">
        <script src="vendor/twbs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    </head>
    <body>
        <?php require_once('private/partials/header.php'); ?>
        
        <div class="container-fluid main-content">

           <?php require_once('private/partials/tables/leader.php'); ?>
           <?php require_once('private/partials/tables/member.php'); ?>
           <?php require_once('private/partials/tables/team.php'); ?>

        </div>

        <?php require_once('private/partials/footer.php'); ?>
    </body>
</html>
