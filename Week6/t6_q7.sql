.open potato.db
.mode column

SELECT
    potato_name, introduction_year
FROM
    potato
WHERE
    introduction_year = (
        SELECT MAX(introduction_year)
        FROM potato
    );