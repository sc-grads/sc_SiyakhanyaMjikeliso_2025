(SELECT * 
FROM products
ORDER BY price DESC
LIMIT 4
)
INTERSECT all
(
SELECT *
FROM products
ORDER BY (price/weight) DESC
LIMIT 4
  );

