<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="http://localhost/lap/lap_kurs_03_24/">
    <title>Login Page</title>
    <link href="vendor/twbs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="public/scss/_custom.scss" rel="stylesheet">
</head>
<body>
    <?php require_once('../partials/header.php'); ?>

    <div class="container">
        <h2>Login</h2>
        <form action="private/php/login.php" method="post">
            <div class="form-group row">
                <label for="username" class="col-sm-2 col-form-label">Username:</label>
                <div class="col-sm-10">
                    <input type="text" id="username" name="username">
                </div>
            </div>

            <div class="form-group row">
                <label for="password" class="col-sm-2 col-form-label">Password:</label>
                <div class="col-sm-10">
                <input type="password" id="password" name="password">
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    <?php require_once('../partials/footer.php'); ?>
</body>
</html>
