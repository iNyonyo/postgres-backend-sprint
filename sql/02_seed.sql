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

