.open potato.db

.mode column

SELECT
    agent.agent_id, agent_name,
    COUNT(breeder.agent_id) number_of_breeders
FROM
    agent
LEFT OUTER JOIN
    breeder ON agent.agent_id = breeder.agent_id
GROUP BY
    agent.agent_id;