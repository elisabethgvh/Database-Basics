.open potato.db

.mode column

SELECT
    potato.potato_id, potato_name,
    COUNT(breeds.breeder_id) number_of_breeders,
    MIN(tonnes_per_year) min_tonnes,
    MAX(tonnes_per_year) max_tonnes,
    SUM(tonnes_per_year) total_tonnes
FROM
    potato, breeder, breeds
WHERE
    breeds.breeder_id = breeder.breeder_id
AND
    breeds.potato_id = potato.potato_id
GROUP BY
    breeds.potato_id;

--SELECT p.potato_id, potato_name,
--COUNT(*) AS number_of_breeders,
--MIN(tonnes_per_year) AS min_tonnes,
--MAX(tonnes_per_year) AS max_tonnes,
--SUM(tonnes_per_year) AS total_tonnes
--FROM breeds brs, potato p
--WHERE brs.potato_id = p.potato_id
--GROUP BY p.potato_id, potato_name
--ORDER BY p.potato_id;