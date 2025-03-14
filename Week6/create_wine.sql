.open wine.db

CREATE TABLE grape (
    grape_id INT,
    grape_name VARCHAR(30) NOT NULL,
    color VARCHAR(30),
    PRIMARY KEY (grape_id),
    UNIQUE (grape_name)
);

CREATE TABLE winery (
    winery_id INT,
    winery_name VARCHAR(30) NOT NULL,
    country VARCHAR(30),
    PRIMARY KEY (winery_id),
    UNIQUE (winery_name)
);

CREATE TABLE wine (
    wine_id INT,
    wine_name VARCHAR(30) NOT NULL,
    sweetness VARCHAR(30),
    type VARCHAR(30),
    PRIMARY KEY (wine_id),
    UNIQUE (wine_name),
    FOREIGN KEY (winery_id) REFERENCES winery
);

CREATE TABLE contains (
    percentage VARCHAR(30),
    PRIMARY KEY (wine_id, grape_id),
    FOREIGN KEY (wine_id) REFERENCES wine,
    FOREIGN KEY (grape_id) REFERENCES grape
);