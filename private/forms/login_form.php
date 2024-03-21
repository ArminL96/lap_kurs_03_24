<div class="container-fluid main-content login-container">
        <h2>Login</h2>
        <form action="private/php/login.php" method="post">
            <div class="form-group row">
                <label for="username" class="col-sm-2 col-form-label">Username:</label>
                <div class="col-sm-10">
                    <input type="text" id="username" name="username" required pattern="[A-Za-z0-9]{1,}">
                </div>
            </div>

            <div class="form-group row">
                <label for="password" class="col-sm-2 col-form-label">Password:</label>
                <div class="col-sm-10">
                    <input type="password" id="password" name="password" required>
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>