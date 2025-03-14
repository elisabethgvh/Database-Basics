.open breeder.db
.open agent.db

.mode column
SELECT breeder_id, breeder_name, agent_name
FROM breeder, agent
where breeder.agent_id = agent.agent_id;