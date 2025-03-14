.open potato.db
.mode column

SELECT
    breeder_id, breeder_name
FROM
    breeder
WHERE breeder_id IN (
    SELECT breeder_id
    FROM breeds
    WHERE potato_id IN(
        SELECT potato_id
        FROM potato
        WHERE potato_name = 'Dunbar Rover'
    )
)
AND breeder_id NOT IN (
    SELECT breeder_id
    FROM breeds
    WHERE potato_id IN (
        SELECT potato_id
        FROM potato
        WHERE potato_name = 'Cara'
    )
);