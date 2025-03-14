.open potato.db

.mode column

SELECT
    breeder.breeder_id, breeder_name
FROM
    breeder, breeds, potato
WHERE
    breeds.breeder_id = breeder.breeder_id
AND
    breeds.potato_id = potato.potato_id
AND
    potato.potato_name = 'Dunbar Rover'

INTERSECT

SELECT
    breeder.breeder_id, breeder_name
FROM
    breeder, breeds, potato
WHERE
    breeds.breeder_id = breeder.breeder_id
AND
    breeds.potato_id = potato.potato_id
AND
    potato.potato_name = 'Duke of York';