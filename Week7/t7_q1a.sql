.open recommender.db
.mode column

SELECT
    brand_name, product_name, evaluation_date, rating
FROM
    product
LEFT OUTER JOIN brand
    ON product.brand_id = brand.brand_id
INNER JOIN evaluation
    ON product.product_id = evaluation.product_id
ORDER BY
    brand_name ASC, product_name ASC, evaluation_date DESC;