.open potato.db

.mode column

SELECT
    potato_name
FROM
    potato
WHERE
    introduction_year BETWEEN 2000 AND 2010;