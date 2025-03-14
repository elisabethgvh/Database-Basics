.open recommender.db
.mode column

SELECT
    brand_name, product_name, evaluation_date, rating
FROM
    user
INNER JOIN evaluation
    ON user.user_id = evaluation.user_id
INNER JOIN product
    ON evaluation.product_id = product.product_id
INNER JOIN brand
    ON product.brand_id = brand.brand_id
WHERE
    user_name = 'Anni N'
ORDER BY
    brand_name ASC, product_name ASC, evaluation_date DESC;