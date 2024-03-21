<?php
    require_once ('private/php/includes.php');

    $stmt = $pdo->query("SELECT t.name AS team_name, SUM(pr.bonus) AS team_bonus FROM Team t LEFT JOIN PersonTeam pt ON t.ID = pt.ID_team LEFT JOIN Project pr ON t.ID = pr.ID_team GROUP BY t.ID ORDER BY team_bonus DESC");

    $person = $stmt->fetchAll(\PDO::FETCH_ASSOC);

    if(!empty($person)) { ?>
        <div class="container container-tables">
        <div class="table-container">
        <h2>Team</h2>
        <table class="table table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>Teamname</th>
                    <th>Bonus</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($person as $p): ?>
                    <tr>
                        <td><?php echo $p['team_name']; ?></td>
                        <td><?php echo $p['team_bonus']; ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
    <?php }
?>

