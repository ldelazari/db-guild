INSERT INTO ActionLogs (player_id, clan_id, action_type, details)
VALUES (:player_id, :clan_id, :action_type, :details::jsonb);