-- Query for persons with the role "leader"
SELECT p.firstname, p.lastname, COALESCE(SUM(pr.bonus), 0) AS total_bonus FROM Person p LEFT JOIN PersonTeam pt ON p.ID = pt.ID_person LEFT JOIN Team t ON pt.ID_team = t.ID LEFT JOIN Project pr ON t.ID = pr.ID_team LEFT JOIN PersonRole prole ON p.ID = prole.ID_person LEFT JOIN Role r ON prole.ID_role = r.ID WHERE r.name = 'leader' GROUP BY p.ID ORDER BY total_bonus DESC;

-- Query for persons with the role "member"
SELECT p.firstname, p.lastname, COALESCE(SUM(pr.bonus), 0) AS total_bonus FROM Person p LEFT JOIN PersonTeam pt ON p.ID = pt.ID_person LEFT JOIN Team t ON pt.ID_team = t.ID LEFT JOIN Project pr ON t.ID = pr.ID_team LEFT JOIN PersonRole prole ON p.ID = prole.ID_person LEFT JOIN Role r ON prole.ID_role = r.ID WHERE r.name = 'member' GROUP BY p.ID ORDER BY total_bonus DESC;

SELECT t.name AS team_name, p.firstname, p.lastname, COALESCE(SUM(pr.bonus), 0) AS total_bonus FROM Team t LEFT JOIN PersonTeam pt ON t.ID = pt.ID_team LEFT JOIN Person p ON pt.ID_person = p.ID LEFT JOIN Project pr ON t.ID = pr.ID_team GROUP BY t.ID, p.ID ORDER BY team_name, total_bonus DESC;
