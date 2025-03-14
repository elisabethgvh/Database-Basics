.open potato.db

.mode column

SELECT
    breeder.breeder_id, breeder_name, agent_name
FROM
    breeder, breeds, agent
WHERE
    breeds.breeder_id = breeder.breeder_id
AND
    breeder.agent_id = agent.agent_id
GROUP BY
    breeder.breeder_id
HAVING
    COUNT(breeds.breeder_id) = 1;

--FROM breeder b
--INNER JOIN breeds brs ON b.breeder_id = brs.breeder_id
--INNER JOIN agent a ON b.agent_id = a.agent_id
--GROUP BY b.breeder_id, breeder_name, agent_name
--HAVING COUNT(*) = 1