<?php
    require_once ('private/php/includes.php');

    $stmt = $pdo->query("SELECT t.name AS team_name, COALESCE(SUM(proj.bonus * r.bonusmultiplier), 0) AS team_bonus FROM Team t LEFT JOIN PersonTeam pt ON t.ID = pt.ID_team LEFT JOIN Person p ON pt.ID_person = p.ID LEFT JOIN PersonRole pr ON p.ID = pr.ID_person LEFT JOIN Role r ON pr.ID_role = r.ID LEFT JOIN Project proj ON t.ID = proj.ID_team GROUP BY t.ID ORDER BY team_bonus DESC;");

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
                        <td><?php echo number_format($p['team_bonus'], 0, '', ''); ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
    <?php }
?>

