.open potato.db

.mode column

SELECT
    potato_name,
    tonnes_per_year * 1.1 AS increased_tonnes
FROM
    breeds
LEFT JOIN potato
    ON breeds.potato_id = potato.potato_id
WHERE
    breeds.breeder_id IN (
        SELECT breeder_id
        FROM breeder
        WHERE breeder_name = 'Chips'
    )
ORDER BY potato_name ASC;