-- products
INSERT INTO products VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99),
(2, 'Bluetooth Speaker', 'Electronics', 49.99),
(3, 'Yoga Mat', 'Fitness', 19.99),
(4, 'Water Bottle', 'Fitness', 9.99),
(5, 'Notebook', 'Stationery', 3.49),
(6, 'Pen Set', 'Stationery', 5.99);

-- stores
INSERT INTO stores VALUES
(101, 'Tech Hub - London', 'South'),
(102, 'FitZone - Manchester', 'North'),
(103, 'Smart Supplies - Birmingham', 'Midlands');

-- sales
INSERT INTO sales VALUES
(1001, 1, 101, '2025-07-01', 3, 77.97),
(1002, 2, 101, '2025-07-01', 2, 99.98),
(1003, 3, 102, '2025-07-02', 5, 99.95),
(1004, 4, 102, '2025-07-02', 10, 99.90),
(1005, 5, 103, '2025-07-03', 20, 69.80),
(1006, 6, 103, '2025-07-03', 15, 89.85),
(1007, 1, 101, '2025-07-04', 1, 25.99),
(1008, 2, 101, '2025-07-04', 1, 49.99),
(1009, 3, 102, '2025-07-05', 2, 39.98),
(1010, 4, 102, '2025-07-05', 3, 29.97),
(1011, 5, 103, '2025-07-06', 10, 34.90),
(1012, 6, 103, '2025-07-06', 5, 29.95);