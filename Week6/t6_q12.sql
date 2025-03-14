.open potato.db

.mode column

SELECT
    potato_name
FROM
    potato
WHERE
    potato_name LIKE '%li%';