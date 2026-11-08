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
('Benjamin', 'Martinez',  'Male',   '1991-10-03', 'ben.martinez@email.com',     '+1-555-0110'),
-- Deliberate duplicate customer
('Emma',     'Johnson',   'Female', '1992-03-14', 'emma.johnson@email.com',     '+1-555-0101');

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