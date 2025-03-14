.open potato.db

.mode column

SELECT
    agent_name, breeder_name, country
FROM
    breeder, agent
WHERE  
    (country = 'Finland' OR country = 'Germany')
    AND
    breeder.agent_id = agent.agent_id
ORDER BY
    agent_name asc, breeder_name asc;