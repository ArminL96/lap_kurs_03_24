<div class="container">
    <h2>Add new team and members</h2>
    <form action="private/php/add_team.php" method="post">
        <div class="form-group row">
            <label for="teamname" class="col-sm-2 col-form-label">Team Name:</label>
            <div class="col-sm-10">
                <input type="text" id="teamname" name="teamname" class="form-control" pattern="[A-Za-z]{1,}" required>
            </div>
        </div>

        <h3>Add Members</h3>
        <div class="form-group row">
            <div class="col-sm-5">
                <select multiple id="availableMembers" name="availableMembers[]" class="availableMembers">
                    <?php
                    $stmt = $pdo->query("SELECT * FROM person");
                    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                        echo '<option value="' . $row['ID'] . '">' . $row['firstname'] . ' ' . $row['lastname'] . '</option>';
                    }
                    ?>
                </select>
            </div>
            <div class="col-sm-2">
                <button type="button" id="btnAdd" class="btn btn-primary">Add &raquo;</button>
                <button type="button" id="btnRemove" class="btn btn-primary">&laquo; Remove</button>
            </div>
            <div class="col-sm-5">
                <select multiple id="selectedMembers" name="selectedMembers[]" class="selectedMembers"></select>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Create Team</button>
    </form>
</div>

<script>
    document.getElementById('btnAdd').onclick = function() {
        var availableSelect = document.getElementById('availableMembers');
        var selectedSelect = document.getElementById('selectedMembers');

        for (var i = 0; i < availableSelect.options.length; i++) {
            if (availableSelect.options[i].selected) {
                selectedSelect.appendChild(availableSelect.options[i]);
                i--;
            }
        }
    };

    document.getElementById('btnRemove').onclick = function() {
        var availableSelect = document.getElementById('availableMembers');
        var selectedSelect = document.getElementById('selectedMembers');

        for (var i = 0; i < selectedSelect.options.length; i++) {
            if (selectedSelect.options[i].selected) {
                availableSelect.appendChild(selectedSelect.options[i]);
                i--;
            }
        }
    };

    document.querySelector('form').addEventListener('submit', function(event) {
        event.preventDefault();

        var selectedSelect = document.getElementById('selectedMembers');
        for (var i = 0; i < selectedSelect.options.length; i++) {
            selectedSelect.options[i].selected = true;
        }

        this.submit();
    });
</script>
