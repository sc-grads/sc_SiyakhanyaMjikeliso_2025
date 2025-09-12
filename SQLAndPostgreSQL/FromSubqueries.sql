select name, price_weight_ratio
FROM ( SELECT name, price/ weight as price_weight_ratio FROM products)  as p
WHERE price_weight_ratio > 5;