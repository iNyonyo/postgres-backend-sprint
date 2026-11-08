SELECT * FROM orders WHERE status = 'processing' LIMIT 5;
SELECT first_name FROM customers WHERE gender = 'Male' OFFSET 5;
SELECT name FROM products WHERE price < 400 OFFSET 3 LIMIT 6;
SELECT name FROM products WHERE description ILIKE 'noise%';
SELECT address FROM orders WHERE order_date BETWEEN DATE '2026-07-20' AND '2026-10-25';

-- Reporting queries
SELECT ROUND(SUM(total_amount), 2) AS total_revenue FROM orders WHERE status = 'delivered';
SELECT EXTRACT(MONTH FROM order_date) AS month, SUM(total_amount) AS monthly_revenue FROM orders GROUP BY EXTRACT(MONTH FROM order_date); 
SELECT id, total_amount FROM orders GROUP BY id ORDER BY total_amount DESC LIMIT 5; 
SELECT ROUND(AVG(total_amount), 2) AS average_order_value FROM orders WHERE status = 'delivered';

-- Share of revenue from returns
SELECT SUM(ABS(total_amount)) AS returns_revenue FROM orders WHERE total_amount < 0;