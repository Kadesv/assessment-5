-- question 1
SELECT email FROM customers ORDER BY email;
-- question 2
SELECT orders.id FROM orders WHERE customer_id = 1;
-- question 3
SELECT SUM(num_cupcakes) FROM orders WHERE processed = 'f';
-- question 4
SELECT cupcakes.name, SUM(orders.num_cupcakes) FROM orders FULL OUTER JOIN cupcakes ON cupcakes.id = orders.cupcake_id GROUP BY cupcakes.id ORDER BY name;
-- question 5
SELECT customers.email, SUM(num_cupcakes) AS total FROM orders LEFT JOIN customers ON customers.id = orders.customer_id GROUP BY email ORDER BY total DESC;
-- question 6
SELECT DISTINCT c.fname, c.lname, c.email FROM customers c JOIN orders o ON c.id = o.customer_id WHERE o.cupcake_id = 5 AND o.processed = TRUE;


