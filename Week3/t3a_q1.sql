.open monarch.db

.mode column
SELECT
    a.name, b.name predecessor_name
FROM
    monarch a, monarch b
WHERE
    a.predecessor_id = b.id;