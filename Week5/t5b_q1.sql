.open potato.db

.mode column

SELECT
    COUNT(DISTINCT potato_name) number_of_varieties,
    MIN(introduction_year) earliest_year,
    MAX(introduction_year) latest_year
FROM
    potato;
