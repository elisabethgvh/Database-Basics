.open potato.db
.mode column

SELECT
    breeder_name
FROM
    breeder
LEFT OUTER JOIN breeds
    ON breeder.breeder_id = breeds.breeder_id
GROUP BY
    breeder_name
HAVING
    AVG(tonnes_per_year) > (
        SELECT AVG(tonnes_per_year)
        FROM breeds
    );