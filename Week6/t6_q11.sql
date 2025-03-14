.open potato.db
.mode column

SELECT 
    breeder_id, breeder_name, agent_name, number_of_breeders
FROM 
    breeder,
    (SELECT agent_id, agent_name FROM agent) agent_information,
    (SELECT agent_id, COUNT(agent_id) number_of_breeders 
     FROM breeder 
     GROUP BY agent_id) AS breeder_information
WHERE 
    breeder.agent_id = agent_information.agent_id
    AND breeder.agent_id = breeder_information.agent_id;
