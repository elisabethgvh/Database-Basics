.open recommender.db
.mode column

SELECT
    product_name, MIN(price) price, brand_name
FROM
    product
LEFT OUTER JOIN brand
    ON product.brand_id = brand.brand_id;