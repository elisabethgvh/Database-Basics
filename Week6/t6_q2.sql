.open potato.db
.mode column

SELECT
    agent_id, agent_name
FROM
    agent
WHERE agent_id NOT IN(
    SELECT agent_id
    FROM breeder
);