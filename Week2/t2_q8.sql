.open potato.db
.open breeder.db
.open breeds.db

.mode column
SELECT
    breeder.breeder_name
FROM
    breeds, potato, breeder 
WHERE
    breeds.breeder_id = breeder.breeder_id
AND
    potato.potato_id = breeds.potato_id
AND
    potato.potato_name = "Dunbar Rover"
ORDER BY
    potato_name ASC;