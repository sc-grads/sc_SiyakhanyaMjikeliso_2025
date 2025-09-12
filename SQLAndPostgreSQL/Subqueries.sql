SELECT name, price
FROM products
WHERE price > (SELECT max(price) FROM products WHERE department = 'Toys');