.open monarch.db

.mode column
SELECT
    a.name, b.name predecessor_name
FROM
    monarch a LEFT OUTER JOIN monarch b
    ON a.predecessor_id = b.id;