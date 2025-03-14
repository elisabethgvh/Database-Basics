.open potato.db
.mode column

SELECT
    potato_name, introduction_year, breeder_name
FROM
    potato, breeder
WHERE breeder_id IN (
    SELECT breeder_id
    FROM breeds
    WHERE potato.potato_id = breeds.potato_id
    )
AND introduction_year = (
        SELECT MAX(introduction_year)
        FROM potato
    );