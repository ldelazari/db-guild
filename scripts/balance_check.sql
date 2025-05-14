SELECT resource_type, amount 
FROM ClanResources
WHERE clan_id = :clan_id;