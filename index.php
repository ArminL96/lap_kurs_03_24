<?php
    require_once('private/php/includes.php');
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>LAP_Kurs</title>
        <link href="vendor/twbs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="public/scss/_custom.scss" rel="stylesheet">
    </head>
    <body>
        <?php
            require_once('private/partials/header.php');

            require_once('private/partials/tables/person.php');

            require_once('private/partials/footer.php');
        ?>
    </body>
</html>
