.open potato.db

.mode column

SELECT
    breeder.breeder_id, breeder_name
FROM
    breeder, breeds b1, breeds b2, potato p1, potato p2
WHERE
    b1.breeder_id = breeder.breeder_id
AND
    b1.potato_id = p1.potato_id
AND
    b2.breeder_id = breeder.breeder_id
AND
    b2.potato_id = p2.potato_id
AND
    p1.potato_name = 'Dunbar Rover'
AND
    p2.potato_name = 'Duke of York';