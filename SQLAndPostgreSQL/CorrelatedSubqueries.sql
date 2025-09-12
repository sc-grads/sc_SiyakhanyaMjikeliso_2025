SELECT name, department, price
FROM products as p1
WHERE p1.price = (
  SELECT max(price)
  FROM products as p2
  WHERE p1.department = p2.department
  );