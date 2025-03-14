.open breeder.db
.open agent.db

.mode column
SELECT agent.agent_id, agent_name, breeder_id, breeder_name
FROM agent
    left outer join breeder 
    on agent.agent_id = breeder.agent_id;