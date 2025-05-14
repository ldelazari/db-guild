UPDATE Clans
SET level = level + 1
WHERE clan_id = :clan_id
AND level < 50;