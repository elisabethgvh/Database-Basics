.open recommender.db
.mode column

SELECT
    product_name, MIN(price) price
FROM
    product
LEFT OUTER JOIN brand
    ON product.brand_id = brand.brand_id
WHERE
    brand_name = 'McCee';