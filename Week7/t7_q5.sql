.open recommender.db
.mode column

SELECT
    user_name
FROM
    user
INNER JOIN evaluation
    ON user.user_id = evaluation.user_id
INNER JOIN product
    ON evaluation.product_id = product.product_id
INNER JOIN brand
    ON product.brand_id = brand.brand_id
WHERE
    brand_name IN ('KooTek')
GROUP BY
    user_name
HAVING
    COUNT(DISTINCT product.product_id) = (
        SELECT
            COUNT(DISTINCT p2.product_id)
        FROM
            product p2
        INNER JOIN brand b2
            ON p2.brand_id = b2.brand_id
        WHERE
            b2.brand_name = 'KooTek'
    )
ORDER BY
    user_name;