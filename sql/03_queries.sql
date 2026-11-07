SELECT * FROM orders WHERE status = 'Pending' LIMIT 2;
SELECT first_name FROM customers WHERE gender = 'Male' OFFSET 5;
SELECT name FROM products WHERE price < 6 OFFSET 3 LIMIT 4;
SELECT name FROM products WHERE description ILIKE 'crispy%';
SELECT address FROM orders WHERE order_date BETWEEN DATE '2025-12-30 21:03:19' AND '2026-09-27 05:24:07';