.open potato.db
.open breeds.db

CREATE TABLE potato (
    potato_id INT,
    potato_name VARCHAR(30) NOT NULL,
    potato_type VARCHAR(30),
    colour VARCHAR(30),
    introduction_year INT,
    PRIMARY KEY (potato_id),
    UNIQUE (potato_name)
);

CREATE TABLE breeds (
    breeder_id INT,
    potato_id INT,
    tonnes_per_year NUMERIC(8,1),
    PRIMARY KEY (breeder_id, potato_id),
    FOREIGN KEY (breeder_id) REFERENCES breeder,
    FOREIGN KEY (potato_id) REFERENCES potato
);

INSERT INTO potato VALUES (1, 'Dunbar Rover', 'floury', 'white', 1936);
INSERT INTO potato VALUES (2, 'Bambino', 'waxy', 'cream', 2005);
INSERT INTO potato VALUES (3, 'Blue Annelise', 'smooth', 'blue', 2007);
INSERT INTO potato VALUES (4, 'Duke of York', 'smooth', 'yellow', 1891);
INSERT INTO potato VALUES (5, 'Cara', 'floury', 'cream', 1973);
INSERT INTO potato VALUES (6, 'Moonlight', 'smooth', 'white', 2002);

INSERT INTO breeds VALUES(1, 1, 70.0);
INSERT INTO breeds VALUES(1, 4, 80.0);
INSERT INTO breeds VALUES(1, 5, 76.0);
INSERT INTO breeds VALUES(2, 2, 30.0);
INSERT INTO breeds VALUES(2, 3, 50.0);
INSERT INTO breeds VALUES(3, 4, 134.0);
INSERT INTO breeds VALUES(4, 1, 22.0);
