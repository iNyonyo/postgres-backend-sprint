TRUNCATE TABLE customers, products, orders, order_items RESTART IDENTITY CASCADE;

INSERT INTO customers (first_name, last_name, gender, date_of_birth, email, phone) VALUES
('Emma',     'Johnson',   'Female', '1992-03-14', 'emma.johnson@email.com',     '+1-555-0101'),
('Liam',     'Smith',     'Male',   '1988-07-22', 'liam.smith@email.com',       '+1-555-0102'),
('Olivia',   'Williams',  'Female', '1995-11-05', 'olivia.w@email.com',         '+1-555-0103'),
('Noah',     'Brown',     'Male',   '1990-01-30', NULL,                         '+1-555-0104'),  -- missing email
('Ava',      'Jones',     'Female', '1998-09-12', 'ava.jones@email.com',        '+1-555-0105'),
('William',  'Garcia',    'Male',   '1985-04-18', 'will.garcia@email.com',      '+1-555-0106'),
('Sophia',   'Miller',    'Female', '1993-12-25', 'sophia.m@email.com',         '+1-555-0107'),
('James',    'Davis',     'Male',   '1987-06-08', 'james.davis@email.com',      '+1-555-0108'),
('Isabella', 'Rodriguez', 'Female', '1996-02-14', 'isabella.r@email.com',       '+1-555-0109'),
('Benjamin', 'Martinez',  'Male',   '1991-10-03', 'ben.martinez@email.com',     '+1-555-0110');
-- Deliberate duplicate customer
INSERT INTO customers (first_name, last_name, gender, date_of_birth, email, phone) VALUES ('Emma',     'Johnson',   'Female', '1992-03-14', 'emma.johnson@email.com',     '+1-555-0111') ON CONFLICT (email) DO UPDATE SET email = EXCLUDED.email, phone = EXCLUDED.phone; 

INSERT INTO products (name, brand, description, price, quantity) VALUES
('MacBook Pro 14"',          'Apple',     'M3 Pro, 18GB RAM, 512GB SSD',                 1999.00,  25),
('Dell XPS 13 Laptop',       'Dell',      'Intel i7, 16GB RAM, 512GB SSD',               1299.00,  40),
('HP Spectre x360 Laptop',   'HP',        '2-in-1 convertible, OLED display',            1449.00,  18),
('Lenovo ThinkPad X1',       'Lenovo',    'Business ultrabook, 32GB RAM',                1599.00,  22),
('ASUS ROG Zephyrus G14',    'ASUS',      'Gaming laptop, RTX 4060',                     1499.00,  15),
('iPhone 15 Pro',            'Apple',     '256GB, Titanium, A17 Pro',                     999.00,  80),
('Samsung Galaxy S24 Ultra', 'Samsung',   '512GB, S Pen included',                       1199.00,  55),
('Sony WH-1000XM5 Headphones','Sony',     'Noise cancelling over-ear',                    349.00, 120),
('AirPods Pro 2',            'Apple',     'USB-C, Active Noise Cancellation',             249.00, 200),
('Logitech MX Master 3S',    'Logitech',  'Wireless ergonomic mouse',                      99.00, 150),
('Samsung 27" Odyssey G7',   'Samsung',   '1440p 240Hz gaming monitor',                   599.00,  35),
('Kindle Paperwhite',        'Amazon',    '16GB, waterproof e-reader',                    149.00,  90),
('Nintendo Switch OLED',     'Nintendo',  'White Joy-Con, 64GB',                          349.00,  60),
('Bose QuietComfort Ultra',  'Bose',      'Premium noise cancelling headphones',          429.00,  45),
('Anker PowerCore 20000',    'Anker',     'Portable power bank 20,000mAh',                 49.99, 300);

INSERT INTO orders (customer_id, order_date, status, total_amount, address) VALUES
(1,  '2026-07-15 10:23:00+00', 'delivered',  2248.00, '123 Maple St, Springfield'),
(2,  '2026-07-18 14:45:00+00', 'delivered',  1299.00, '456 Oak Ave, Rivertown'),
(3,  '2026-07-22 09:12:00+00', 'shipped',    1599.00, '789 Pine Rd, Lakeside'),
(4,  '2026-08-01 16:30:00+00', 'delivered',   349.00, '321 Birch Ln, Hillview'),
(5,  '2026-08-05 11:05:00+00', 'delivered',  1199.00, '654 Cedar Blvd, Greenfield'),
(1,  '2026-08-10 13:20:00+00', 'delivered',   348.00, '123 Maple St, Springfield'),
(6,  '2026-08-14 08:55:00+00', 'cancelled',  1999.00, '987 Elm St, Brookside'),
(7,  '2026-08-20 17:40:00+00', 'delivered',   249.00, '147 Willow Way, Fairview'),
(8,  '2026-08-25 12:15:00+00', 'delivered',   448.00, '258 Spruce Ct, Westwood'),
(9,  '2026-09-02 10:00:00+00', 'shipped',    1499.00, '369 Aspen Dr, Northgate'),
(10, '2026-09-05 15:30:00+00', 'delivered',   149.00, '741 Poplar Pl, Eastside'),
(2,  '2026-09-10 09:45:00+00', 'delivered',   998.00, '456 Oak Ave, Rivertown'),
(3,  '2026-09-15 14:10:00+00', 'processing',  599.00, '789 Pine Rd, Lakeside'),
(5,  '2026-09-18 11:25:00+00', 'delivered',   349.00, '654 Cedar Blvd, Greenfield'),
(1,  '2026-09-22 16:50:00+00', 'delivered',  1048.00, '123 Maple St, Springfield'),
(4,  '2026-09-28 08:30:00+00', 'delivered',    99.00, '321 Birch Ln, Hillview'),
(6,  '2026-10-03 13:15:00+00', 'shipped',    1449.00, '987 Elm St, Brookside'),
(7,  '2026-10-08 10:40:00+00', 'delivered',   429.00, '147 Willow Way, Fairview'),
(8,  '2026-10-12 15:05:00+00', 'delivered',   198.00, '258 Spruce Ct, Westwood'),
(9,  '2026-10-15 09:20:00+00', 'processing',  999.00, '369 Aspen Dr, Northgate'),
(10, '2026-10-18 14:55:00+00', 'delivered',   349.00, '741 Poplar Pl, Eastside'),
(2,  '2026-10-22 11:30:00+00', 'delivered',  1648.00, '456 Oak Ave, Rivertown'),
(3,  '2026-10-25 16:10:00+00', 'shipped',     249.00, '789 Pine Rd, Lakeside'),
(5,  '2026-10-28 08:45:00+00', 'delivered',    49.99, '654 Cedar Blvd, Greenfield'),
(1,  '2026-11-01 12:00:00+00', 'processing', 1999.00, '123 Maple St, Springfield'),
(4,  '2026-11-03 09:35:00+00', 'delivered',   349.00, '321 Birch Ln, Hillview'),
(6,  '2026-11-05 14:20:00+00', 'shipped',     599.00, '987 Elm St, Brookside'),
(7,  '2026-11-06 10:50:00+00', 'processing',  249.00, '147 Willow Way, Fairview'),
(8,  '2026-11-07 15:15:00+00', 'delivered',   149.00, '258 Spruce Ct, Westwood'),
-- One return order 
(9,  '2026-11-07 17:00:00+00', 'returned',   -349.00, '369 Aspen Dr, Northgate');

INSERT INTO order_items
    (product_id, order_id, quantity, unit_price, total_price)
VALUES
    (1, 1, 2, 150.00, 300.00),
    (2, 1, 1,  75.00,  75.00),
    (3, 2, 1, 500.00, 500.00),
    (4, 2, 2,  40.00,  80.00),
    (5, 3, 1, 250.00, 250.00),
    (1, 4, 1, 150.00, 150.00),
    (6, 4, 2,  90.00, 180.00),
    (7, 5, 1, 350.00, 350.00),
    (2, 6, 3,  75.00, 225.00);