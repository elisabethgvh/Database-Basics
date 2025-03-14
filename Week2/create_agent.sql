.open agent.db

CREATE TABLE agent (
    agent_id INT,
    agent_name VARCHAR(30) NOT NULL,
    foundation_year INT,
    PRIMARY KEY (agent_id),
    UNIQUE (agent_name)
);

INSERT INTO agent VALUES(1, 'Potatis Institutet', 1998);
INSERT INTO agent VALUES(2, 'Agrico', 1980);
INSERT INTO agent VALUES(3, 'Perunatukku', 2003);
INSERT INTO agent VALUES(4, 'Kartoffelzentrum', 2019);

.mode column
select * from agent;