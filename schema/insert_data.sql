-- Insert Customers
INSERT INTO customers (customer_id, name, city, email) VALUES
(1, 'Riya Sharma', 'Delhi', 'riya.sharma@example.com'),
(2, 'Ankit Das', 'Mumbai', 'ankit.das@example.com'),
(3, 'Saswata Puri', 'Bhubaneswar', 'saswata.puri@example.com'),
(4, 'Tina Roy', 'Kolkata', 'tina.roy@example.com'),
(5, 'Vikram Singh', 'Delhi', 'vikram.singh@example.com'),
(6, 'Neha Patel', 'Mumbai', 'neha.patel@example.com'),
(7, 'Arjun Reddy', 'Hyderabad', 'arjun.reddy@example.com'),
(8, 'Priya Menon', 'Chennai', 'priya.menon@example.com'),
(9, 'Rahul Jain', 'Bangalore', 'rahul.jain@example.com'),
(10, 'Sneha Gupta', 'Delhi', 'sneha.gupta@example.com');

-- Insert Products
INSERT INTO products (product_id, product_name, category, price, stock_quantity) VALUES
(101, 'Wireless Mouse', 'Electronics', 599.99, 50),
(102, 'Mechanical Keyboard', 'Electronics', 1499.50, 30),
(103, 'Water Bottle', 'Home & Kitchen', 299.00, 100),
(104, 'Notebook', 'Stationery', 49.00, 200),
(105, 'Bluetooth Earbuds', 'Electronics', 1999.00, 25),
(106, 'Desk Lamp', 'Home & Kitchen', 799.00, 40),
(107, 'Pen Set', 'Stationery', 99.00, 150),
(108, 'Laptop Stand', 'Electronics', 499.00, 60),
(109, 'Coffee Mug', 'Home & Kitchen', 199.00, 80),
(110, 'USB Cable', 'Electronics', 149.00, 120);

-- Insert Orders
INSERT INTO orders (order_id, order_date, customer_id, status) VALUES
(1001, '2024-01-10', 1, 'Delivered'),
(1002, '2024-01-15', 2, 'Shipped'),
(1003, '2024-02-05', 3, 'Delivered'),
(1004, '2024-03-20', 1, 'Pending'),
(1005, '2024-03-22', 4, 'Delivered'),
(1006, '2024-04-01', 5, 'Shipped'),
(1007, '2024-04-10', 6, 'Pending'),
(1008, '2024-04-15', 7, 'Delivered'),
(1009, '2024-05-01', 8, 'Cancelled'),
(1010, '2024-05-05', 9, 'Shipped'),
(1011, '2024-05-10', 10, 'Pending'),
(1012, '2024-05-15', 1, 'Delivered');

-- Insert Order Items
INSERT INTO order_items (item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1001, 101, 2, 599.99),  -- 2 Mice
(2, 1001, 104, 3, 49.00),    -- 3 Notebooks
(3, 1002, 102, 1, 1499.50),  -- 1 Keyboard
(4, 1003, 103, 4, 299.00),   -- 4 Water Bottles
(5, 1004, 102, 1, 1499.50),  -- 1 Keyboard
(6, 1005, 101, 1, 599.99),   -- 1 Mouse
(7, 1005, 104, 2, 49.00),    -- 2 Notebooks
(8, 1006, 105, 1, 1999.00),  -- 1 Earbuds
(9, 1006, 106, 2, 799.00),   -- 2 Lamps
(10, 1007, 107, 5, 99.00),   -- 5 Pens
(11, 1008, 108, 1, 499.00),  -- 1 Laptop Stand
(12, 1008, 109, 3, 199.00),  -- 3 Mugs
(13, 1009, 110, 2, 149.00),  -- 2 USB Cables
(14, 1010, 101, 1, 599.99),  -- 1 Mouse
(15, 1011, 102, 2, 1499.50), -- 2 Keyboards
(16, 1012, 103, 2, 299.00),  -- 2 Water Bottles
(17, 1012, 104, 1, 49.00);   -- 1 Notebook