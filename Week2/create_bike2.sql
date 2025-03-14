.open bike.db
PRAGMA foreign_keys = ON;

CREATE TABLE bike (
    id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    tyre_size INT,
    price DECIMAL (6,2),
    PRIMARY KEY (id)
);

INSERT INTO bike VALUES (1, 'Raptor', 'terrain', 26, 349.00);	
INSERT INTO bike VALUES (2, 'Montauk', 'terrain', 27, 499.00);
INSERT INTO bike VALUES (3, 'Poni', 'city', NULL, 599.00);		
INSERT INTO bike VALUES (4, 'Ainotar', 'city', 28, NULL);
INSERT INTO bike VALUES (5, 'eMotion', 'electric', 26, NULL);
INSERT INTO bike VALUES (6, 'Soma', 'children', 16, 349.00);
INSERT INTO bike VALUES (7, 'Skyride', 'children', 20, 449.00);

.mode column
SELECT * FROM bike;