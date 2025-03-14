.open recommender.db
.mode column

SELECT
    birth_year, user_name
FROM
    user
INNER JOIN evaluation
    ON user.user_id = evaluation.user_id
INNER JOIN product
    ON evaluation.product_id = product.product_id
INNER JOIN brand
    ON product.brand_id = brand.brand_id
WHERE
    brand_name IN ('KooTek', 'McCee')
GROUP BY
    user_name
HAVING
    COUNT(DISTINCT brand_name) = 2
ORDER BY
    birth_year ASC, user_name ASC;