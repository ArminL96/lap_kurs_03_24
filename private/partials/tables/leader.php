<?php
    require_once ('private/php/includes.php');

    $stmt = $pdo->query("SELECT p.firstname, p.lastname, COALESCE(SUM(pr.bonus * r.bonusmultiplier), 0) AS total_bonus FROM Person p LEFT JOIN PersonTeam pt ON p.ID = pt.ID_person LEFT JOIN Team t ON pt.ID_team = t.ID LEFT JOIN Project pr ON t.ID = pr.ID_team LEFT JOIN PersonRole prole ON p.ID = prole.ID_person LEFT JOIN Role r ON prole.ID_role = r.ID WHERE r.name = 'leader' GROUP BY p.ID ORDER BY total_bonus DESC;");

    $person = $stmt->fetchAll(\PDO::FETCH_ASSOC);

    if(!empty($person)) { ?>
        <div class="container container-tables">
            <div class="table-container">
                <h2>Role - Leader</h2>
                <table class="table table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th>Firstname</th>
                            <th>Lastname</th>
                            <th>Bonus</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($person as $p): ?>
                            <tr>
                                <td><?php echo $p['firstname']; ?></td>
                                <td><?php echo $p['lastname']; ?></td>
                                <td><?php echo number_format($p['total_bonus'], 0, '', '') ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    <?php }
?>

