.open recommender.db

CREATE TABLE user (
    user_id     INT,
    user_name   VARCHAR(30) NOT NULL,
    birth_year  INT,
    PRIMARY KEY (user_id),
    UNIQUE      (user_name)
);

CREATE TABLE brand (
    brand_id    INT,
    brand_name  VARCHAR(30) NOT NULL,
    country     VARCHAR(30),
    PRIMARY KEY (brand_id),
    UNIQUE      (brand_name)
);

CREATE TABLE category (
    category_id     INT,
    category_name   VARCHAR(30) NOT NULL,
    PRIMARY KEY     (category_id),
    UNIQUE          (category_name)
);

CREATE TABLE product (
    product_id      INT,
    product_name    VARCHAR(30) NOT NULL,
    price           NUMERIC(5,2),
    description     VARCHAR(30),
    brand_id        INT,
    PRIMARY KEY     (product_id),
    UNIQUE          (product_name),
    FOREIGN KEY     (brand_id) REFERENCES brand
);

CREATE TABLE evaluation (
    user_id         INT,
    product_id      INT,
    evaluation_date VARCHAR(10),
    rating          INT,
    review          VARCHAR(30),
    PRIMARY KEY     (user_id, product_id, evaluation_date),
    FOREIGN KEY     (user_id)       REFERENCES user,
    FOREIGN KEY     (product_id)    REFERENCES product
);

CREATE TABLE falls_into (
    product_id  INT,
    category_id INT,
    PRIMARY KEY (product_id, category_id),
    FOREIGN KEY (product_id)    REFERENCES product,
    FOREIGN KEY (category_id)   REFERENCES category
);

INSERT INTO user VALUES (1, 'Anni N', 1985);
INSERT INTO user VALUES (2, 'Juuso K', 1990);
INSERT INTO user VALUES (3, 'Eino U', 1940);
INSERT INTO user VALUES (4, 'Aila J', 1953);

INSERT INTO brand VALUES (1, 'McCee', 'United States');
INSERT INTO brand VALUES (2, 'KooTek', 'Finland');

INSERT INTO category VALUES (1, 'garden');
INSERT INTO category VALUES (2, 'forest');
INSERT INTO category VALUES (3, 'snow clearing');

INSERT INTO product VALUES (1, 'Grass trimmer TRCee', 179.00, 'efficient 4-stroke', 1);
INSERT INTO product VALUES (2, 'Trimmer line Cee', 6.99, 'high-class line', 1);
INSERT INTO product VALUES (3, 'Chains saw MSCee RR', 559.00, 'robust and heavy', 1);
INSERT INTO product VALUES (4, 'Trimmer line Y', 3.99, 'all-purpose line', 2);
INSERT INTO product VALUES (5, 'Shovel L', 23.95, 'light general-purpose shovel', 2);

INSERT INTO evaluation VALUES (1, 1, '2023-06-05', 3, NULL);
INSERT INTO evaluation VALUES (1, 2, '2023-06-13', 2, NULL);
INSERT INTO evaluation VALUES (1, 5, '2023-07-24', 3, NULL);
INSERT INTO evaluation VALUES (1, 4, '2023-08-13', 4, NULL);
INSERT INTO evaluation VALUES (1, 1, '2023-09-12', 5, 'reliable and functioning gadget');
INSERT INTO evaluation VALUES (3, 1, '2023-06-30', 5, 'excellent');
INSERT INTO evaluation VALUES (3, 2, '2023-07-02', 2, 'moderately works');
INSERT INTO evaluation VALUES (2, 5, '2023-06-04', 1, 'rip-off');
INSERT INTO evaluation VALUES (4, 5, '2023-08-11', 1, 'completely useless');

INSERT INTO falls_into VALUES (1, 1);
INSERT INTO falls_into VALUES (2, 1);
INSERT INTO falls_into VALUES (3, 2);
INSERT INTO falls_into VALUES (3, 1);
INSERT INTO falls_into VALUES (4, 1);
INSERT INTO falls_into VALUES (5, 1);
INSERT INTO falls_into VALUES (5, 3);