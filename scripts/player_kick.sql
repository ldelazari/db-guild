DELETE FROM ClanMembers
WHERE clan_id = :clan_id 
AND player_id = :player_id
AND role != 'лидер';