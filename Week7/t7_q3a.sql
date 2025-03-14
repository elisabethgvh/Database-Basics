.open recommender.db
.mode column

SELECT
    product_name, MIN(price) price
FROM
    product;