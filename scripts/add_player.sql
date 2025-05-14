INSERT INTO Players (name, level, experience)
VALUES (:name, :level, :exp)
RETURNING player_id;
