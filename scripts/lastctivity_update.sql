UPDATE Players 
SET last_online = CURRENT_TIMESTAMP 
WHERE player_id = :player_id;