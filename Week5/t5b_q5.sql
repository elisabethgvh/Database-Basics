.open potato.db

.mode column

SELECT
    potato.potato_id, potato_name,
    COUNT(breeds.breeder_id) number_of_breeders,
    MIN(tonnes_per_year) min_tonnes,
    MAX(tonnes_per_year) max_tonnes,
    SUM(tonnes_per_year) total_tonnes
FROM
    potato
LEFT OUTER JOIN breeds
    ON potato.potato_id = breeds.potato_id
--LEFT OUTER JOIN breeder
--    ON breeds.breeder_id = breeder.breeder_id
GROUP BY
    potato.potato_id;

--GROUP BY
--    potato.potato_id, potato_name
--ORDER BY
--    potato.potato_id;