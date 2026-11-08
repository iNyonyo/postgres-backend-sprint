SELECT * FROM orders WHERE status = 'processing' LIMIT 5;
SELECT first_name FROM customers WHERE gender = 'Male' OFFSET 5;
SELECT name FROM products WHERE price < 400 OFFSET 3 LIMIT 6;
SELECT name FROM products WHERE description ILIKE 'noise%';
SELECT address FROM orders WHERE order_date BETWEEN DATE '2026-07-20' AND '2026-10-25';