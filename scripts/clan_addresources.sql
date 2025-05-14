INSERT INTO ClanResources (clan_id, resource_type, amount)
VALUES (:clan_id, :res_type, :amount)
ON CONFLICT (clan_id, resource_type)
DO UPDATE SET 
    amount = ClanResources.amount + EXCLUDED.amount,
    last_updated = CURRENT_TIMESTAMP;