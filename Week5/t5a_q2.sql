.open potato.db

.mode column

SELECT
    breeder_name
FROM
    breeder
WHERE
    country IN ('Germany', 'Finland')
ORDER BY
    breeder_name asc;