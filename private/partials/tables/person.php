<?php
    require_once ('private/php/includes.php');

    $stmt = $pdo->query("SELECT * FROM person");
    $person = $stmt->fetchAll(\PDO::FETCH_ASSOC);

    if(!empty($person)) { ?>
        <div class="container container-tables">
        <div class="table-container">
        <table class="table table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Firstname</th>
                    <th>Lastname</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($person as $p): ?>
                    <tr>
                        <td><?php echo $p['ID']; ?></td>
                        <td><?php echo $p['firstname']; ?></td>
                        <td><?php echo $p['lastname']; ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
    <?php }
?>

