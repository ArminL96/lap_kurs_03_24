
    <div class="container">
        <h2>Add new person</h2>
        <form action="private/php/add_person.php" method="post">
            <div class="form-group row">
                <label for="firstname" class="col-sm-2 col-form-label">Firstname:</label>
                <div class="col-sm-10">
                    <input type="text" id="firstname" name="firstname" class="form-control" required pattern="[A-Za-z0-9]">
                </div>
            </div>

            <div class="form-group row">
                <label for="lastname" class="col-sm-2 col-form-label">Lastname:</label>
                <div class="col-sm-10">
                    <input type="text" id="lastname" name="lastname" class="form-control" pattern="[A-Za-z]{1,}" required>
                </div>
            </div>

            <div class="form-group row">
                <label for="role" class="col-sm-2 col-form-label">Role:</label>
                <div class="col-sm-10">
                    <select class="form-control custom-select" id="role" name="role">
                        <?php
                        $stmt = $pdo->query("SELECT * FROM role");
                        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                            echo '<option value="' . $row['ID'] . '">' . $row['name'] . '</option>';
                        }
                        ?>
                    </select>
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

