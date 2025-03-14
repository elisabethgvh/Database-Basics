.open monarch.db

.mode column
SELECT
    a.name, b.name successor_name
FROM
    monarch a LEFT OUTER JOIN monarch b
    ON a.id = b.predecessor_id;