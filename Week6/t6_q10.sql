.open potato.db
.mode column

SELECT
    agent.agent_id, agent_name, breeders, potatoes
FROM
    agent,
    (SELECT
        agent_id,
        COUNT(breeder_id) breeders
    FROM
        breeder
    GROUP BY
        agent_id) breeder_number,
    (SELECT
        agent_id,
        COUNT(DISTINCT potato_id) potatoes
    FROM
        breeder
    LEFT OUTER JOIN breeds
        ON breeder.breeder_id = breeds.breeder_id
    GROUP BY
        agent_id) potato_number
WHERE
    agent.agent_id = breeder_number.agent_id
AND
    agent.agent_id = potato_number.agent_id

UNION

SELECT 
    agent_id,
    agent_name,
    0 AS breeders,
    0 AS potatoes
FROM 
    agent
WHERE 
    agent_id NOT IN (
        SELECT agent_id 
        FROM breeder
    );