.open recommender.db
.mode column

SELECT
    product_name,
    MIN(rating) min_rating,
    MAX(rating) max_rating,
    AVG(rating) avg_rating,
    COUNT(rating) no_ratings,
    COUNT(DISTINCT evaluation.user_id) different_users
FROM
    product
LEFT OUTER JOIN evaluation
    ON product.product_id = evaluation.product_id
GROUP BY
    product_name
ORDER BY
    product_name;
