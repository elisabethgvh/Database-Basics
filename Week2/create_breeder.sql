.open breeder.db

CREATE TABLE breeder (
    breeder_id INT,
    breeder_name VARCHAR(30) NOT NULL,
    country VARCHAR(30) NOT NULL,
    agent_id INT NOT NULL,
    PRIMARY KEY (breeder_id),
    UNIQUE (breeder_name),
    FOREIGN KEY (agent_id) REFERENCES agent
);

INSERT INTO breeder VALUES(1, 'Chips', 'Sweden', 1);
INSERT INTO breeder VALUES(2, 'Sipsix', 'Finland', 3);
INSERT INTO breeder VALUES(3, 'Kartoffelmeister', 'Germany', 2);
INSERT INTO breeder VALUES(4, 'Penan pottu', 'Finland', 2);

.mode column
select * from breeder;