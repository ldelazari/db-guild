WITH new_clan AS (
    INSERT INTO Clans (name, leader_id, motto)
    VALUES (:clan_name, :leader_id, :motto)
    RETURNING clan_id
)
INSERT INTO ClanMembers (player_id, clan_id, role)
SELECT :leader_id, clan_id, 'лидер' FROM new_clan;