.open potato.db

.mode column

SELECT
    breeder_id, COUNT(breeder_id) number_of_varieties
FROM
    breeds
GROUP BY
    breeder_id;