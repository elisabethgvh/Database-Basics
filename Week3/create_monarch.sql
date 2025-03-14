CREATE TABLE monarch(
    id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    predecessor_id INT,
    PRIMARY KEY (id),
    UNIQUE (name),
    FOREIGN KEY (predecessor_id) REFERENCES monarch
);

INSERT INTO monarch VALUES (1, 'Charles XIV John', NULL);
INSERT INTO monarch VALUES (2, 'Oscar I', 1);
INSERT INTO monarch VALUES (3, 'Charles XV', 2);

.mode column
select * from monarch;