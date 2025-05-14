SELECT a.action_date, p.name, a.action_type
FROM ActionLogs a
JOIN Players p ON a.player_id = p.player_id
WHERE a.clan_id = :clan_id
ORDER BY a.action_date DESC
LIMIT 100;