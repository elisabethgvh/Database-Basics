.open potato.db
.mode column

SELECT
    agent_id, agent_name
FROM
    agent
WHERE NOT EXISTS (
    SELECT *
    FROM breeder
    WHERE agent.agent_id = breeder.agent_id
);