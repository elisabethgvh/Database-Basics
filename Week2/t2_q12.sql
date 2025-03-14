.open bike_shop.db
.open sells.db

CREATE TABLE bike_shop (
    bike_shop_id INT NOT NULL,
    bike_shop_name VARCHAR(30) NOT NULL,
    bike_shop_address VARCHAR(30),
    PRIMARY KEY (bike_shop_id),
    UNIQUE (bike_shop_name)
);

INSERT INTO bike_shop VALUES (1, 'CycloReve', '12 Rue des Cycles, 75002 Paris');
INSERT INTO bike_shop VALUES (2, 'VeloVenture', '45 Avenue des Roues, 69001 Lyon');
INSERT INTO bike_shop VALUES (3, 'Pedale Passion', '78 Boulevard des Veloistes, 13006 Marseille');
INSERT INTO bike_shop VALUES (4, 'LAtelier du Velo', '23 Place du Cycliste, 33000 Bordeaux');
INSERT INTO bike_shop VALUES (5, 'Roues et Rayons', '10 Rue de la Bicyclette, 59000 Lille');

CREATE TABLE sells (
    bike_id INT NOT NULL,
    bike_shop_id INT NOT NULL,
    PRIMARY KEY (bike_id, bike_shop_id),
    FOREIGN KEY (bike_id) REFERENCES bike,
    FOREIGN KEY (bike_shop_id) REFERENCES bike_shop
);

INSERT INTO sells VALUES (1, 3);
INSERT INTO sells VALUES (1, 4);
INSERT INTO sells VALUES (2, 1);
INSERT INTO sells VALUES (3, 2);
INSERT INTO sells VALUES (4, 5);
INSERT INTO sells VALUES (5, 1);
INSERT INTO sells VALUES (5, 3);
INSERT INTO sells VALUES (7, 5);

select * from bike_shop;
select * from sells;