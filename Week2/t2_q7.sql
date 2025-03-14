.open potato.db
.open breeder.db
.open breeds.db

.mode column
SELECT
    potato.potato_name,
    breeder.breeder_name
FROM
    potato
LEFT OUTER JOIN breeds
    ON potato.potato_id = breeds.potato_id
LEFT OUTER JOIN breeder
    ON breeds.breeder_id = breeder.breeder_id
ORDER BY
    potato_name ASC;