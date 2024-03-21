<div class="container">
    <h2>Add New Project</h2>
    <form action="private/php/add_project.php" method="post">
        <div class="form-group row">
            <label for="project_name" class="col-sm-2 col-form-label">Project Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="project_name" name="project_name" pattern="[A-Za-z]{1,}" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="team" class="col-sm-2 col-form-label">Team:</label>
            <div class="col-sm-10">
                <select class="form-control custom-select" id="team" name="team">
                    <?php
                    $stmt = $pdo->query("SELECT * FROM team");
                    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                        echo '<option value="' . $row['ID'] . '">' . $row['name'] . '</option>';
                    }
                    ?>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label for="bonus" class="col-sm-2 col-form-label">Bonus:</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="bonus" name="bonus" min="0">
            </div>
        </div>
        
        <button type="submit" class="btn btn-primary">Add Project</button>

    </form>
</div>
