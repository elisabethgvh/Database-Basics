.open potato.db

.mode column

SELECT DISTINCT
    colour
FROM
    potato
ORDER BY
    colour asc;