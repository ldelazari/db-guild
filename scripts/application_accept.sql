BEGIN;
UPDATE ClanApplications
SET status = 'принята', processed_by = :moderator_id
WHERE application_id = :app_id;

INSERT INTO ClanMembers (player_id, clan_id)
VALUES (:player_id, :clan_id);
COMMIT;