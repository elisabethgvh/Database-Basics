.open potato.db
.open breeder.db
.open breeds.db

.mode column
SELECT distinct
    potato.potato_id, potato.potato_name
FROM
    breeds, potato, breeder 
WHERE
    breeds.breeder_id = breeder.breeder_id
AND
    potato.potato_id = breeds.potato_id
--FROM potato
--INNER JOIN breeds
--ON potato.potato_id = breeds.potato_id
ORDER BY
    potato.potato_id ASC;