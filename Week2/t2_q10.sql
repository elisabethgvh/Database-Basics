.open potato.db
.open breeder.db
.open breeds.db

.mode column
SELECT distinct
    potato.potato_id, potato.potato_name
FROM
    potato
LEFT JOIN
--LEFT OUTER JOIN
    breeds ON potato.potato_id = breeds.potato_id
WHERE
    breeds.potato_id is NULL
ORDER BY
    potato.potato_id ASC;