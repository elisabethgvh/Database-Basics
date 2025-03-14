.open potato.db

.mode column

SELECT
    COUNT(DISTINCT potato_id) number_of_varieties
FROM
    breeds;