<nav class="navbar navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="index.php">LAP Kurs</a>
        <ul class="navbar-nav flex-row">
            <?php
            session_start();

            if (isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true) {
                echo '<li class="nav-item">
                        <a class="nav-link text-white" href="private/pages/logout.php">Logout</a>
                    </li>';
            } else {
                echo '<li class="nav-item">
                        <a class="nav-link text-white" href="private/pages/login.php">Login</a>
                    </li>';
            }
            ?>
            <li class="nav-item">
                <a class="nav-link text-white" href="#">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="#">Services</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="#">Contact</a>
            </li>
        </ul>
    </div>
</nav>
