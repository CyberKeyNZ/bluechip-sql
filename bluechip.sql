-- Bluechip IT Procurement Database
-- Created by [Your Name], March 2025
-- For SQL practice in IT procurement and support

CREATE TABLE pricelist (
    sku TEXT PRIMARY KEY,
    product_name TEXT,
    vendor TEXT,
    price REAL,
    stock INTEGER
);

INSERT INTO pricelist (sku, product_name, vendor, price, stock) VALUES
('DELL-XPS13', 'Dell XPS 13 Laptop', 'Dell', 1200.00, 10),
('CISCO-2950', 'Cisco Catalyst 2950 Switch', 'Cisco', 800.00, 5),
('MS-365', 'Microsoft 365 Business', 'Microsoft', 12.00, 100);

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    last_order DATE
);

INSERT INTO customers (customer_id, name, email, last_order) VALUES
(1, 'Auckland School', 'admin@auckschool.nz', '2024-12-15'),
(2, 'NZ Retail Ltd', 'sales@nzretail.co.nz', '2025-01-10');

CREATE TABLE licenses (
    license_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    license_type TEXT,
    expiry_date DATE
);

INSERT INTO licenses (license_id, customer_id, license_type, expiry_date) VALUES
(1, 1, 'Microsoft 365', '2025-06-01'),
(2, 2, 'Antivirus Pro', '2025-04-15');

CREATE TABLE support_logs (
    log_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    error_code TEXT,
    log_date DATE
);

INSERT INTO support_logs (log_id, customer_id, error_code, log_date) VALUES
(1, 1, 'LIC-001', '2025-03-23'),
(2, 2, 'NET-404', '2025-03-23');


