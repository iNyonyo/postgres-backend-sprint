-- Filtering queries
SELECT * FROM orders WHERE status = 'processing' ORDER BY address LIMIT 5;
SELECT first_name FROM customers WHERE gender = 'Male' ORDER BY first_name OFFSET 5;
SELECT name FROM products WHERE price < 400 ORDER BY name OFFSET 3 LIMIT 6;
SELECT name FROM products WHERE description ILIKE '%noise%';
SELECT address FROM orders WHERE order_date BETWEEN DATE '2026-07-20 00:00:00' AND '2026-10-25 23:59:59';

SELECT customers.first_name, customers.last_name, orders.order_date, orders.total_amount, orders.address FROM customers
JOIN orders ON customers.id = orders.customer_id WHERE status = 'delivered' GROUP BY orders.customer_id, customers.first_name, customers.last_name, orders.order_date, orders.total_amount, orders.address
ORDER BY customers.first_name;

SELECT * FROM products WHERE name ILIKE '%laptop';
SELECT * FROM orders WHERE order_date >= CURRENT_DATE - INTERVAL '30 days';

-- Reporting queries
SELECT ROUND(SUM(total_amount), 2) AS total_revenue FROM orders WHERE status = 'delivered';

SELECT EXTRACT(MONTH FROM order_date) AS month, EXTRACT(YEAR FROM order_date) AS year, SUM(total_amount) AS monthly_revenue FROM orders 
WHERE status = 'delivered' GROUP BY EXTRACT(MONTH FROM order_date), EXTRACT(YEAR FROM order_date) ORDER BY month; 

SELECT products.name, SUM(order_items.quantity) AS item_quantity, SUM(order_items.total_price) AS item_revenue FROM products 
JOIN order_items ON products.id = order_items.product_id GROUP BY products.name ORDER BY item_revenue DESC LIMIT 5;

SELECT ROUND(AVG(total_amount), 2) AS average_order_value FROM orders WHERE status = 'delivered';

-- nullif example
SELECT ROUND(COUNT(*)::NUMERIC / NULLIF(COUNT(CASE WHEN customer_id = 6 AND status = 'delivered' THEN 1 END), 0), 2) AS null_example FROM orders;

-- total returns
SELECT SUM(total_amount) AS returns_revenue FROM orders WHERE total_amount < 0;

-- returns percent
WITH revenue AS (
    SELECT
        SUM(CASE WHEN total_amount < 0 THEN total_amount ELSE 0 END) AS returns_revenue,
        SUM(CASE WHEN total_amount > 0 THEN total_amount ELSE 0 END) AS total_revenue
    FROM orders
)

SELECT ROUND((returns_revenue::NUMERIC / total_revenue) * 100, 2) AS revenue_percent FROM revenue;

--handling missing values
SELECT COALESCE(email, 'Email not provided') FROM customers;

--upsert
INSERT INTO customers (first_name, last_name, gender, date_of_birth, email, phone) VALUES ('Emma',     'Johnson',   'Female', '1992-03-14', 'emma.johnson@email.com',     '+1-555-0111') 
ON CONFLICT (email) DO UPDATE SET first_name = EXCLUDED.first_name, last_name = EXCLUDED.last_name, phone = EXCLUDED.phone; 

--JOIN
SELECT customers.first_name, customers.last_name, products.name, order_items.quantity, order_items.total_price FROM customers JOIN orders ON customers.id = orders.customer_id JOIN order_items ON orders.id = order_items.order_id JOIN products ON order_items.product_id = products.id ORDER BY orders.id LIMIT 5;

--LEFT JOIN
SELECT customers.id, customers.first_name, customers.last_name FROM customers LEFT JOIN orders ON customers.id = orders.customer_id WHERE orders.id IS NULL;

SELECT products.id, products.name FROM products LEFT JOIN order_items ON products.id = order_items.product_id WHERE order_items.id IS NULL;