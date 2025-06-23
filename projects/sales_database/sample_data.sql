-- Insert salespersons
INSERT INTO salespersons VALUES (1, 'Alice');
INSERT INTO salespersons VALUES (2, 'Bob');
INSERT INTO salespersons VALUES (3, 'Charlie');

-- Insert customers
INSERT INTO customers VALUES (1, 'Acme Corp');
INSERT INTO customers VALUES (2, 'Globex Inc');
INSERT INTO customers VALUES (3, 'Umbrella LLC');

-- Insert regions
INSERT INTO regions VALUES (1, 'North');
INSERT INTO regions VALUES (2, 'South');

-- Assign regions
INSERT INTO salesperson_regions VALUES (1, 1);
INSERT INTO salesperson_regions VALUES (2, 2);
INSERT INTO salesperson_regions VALUES (3, 1);

-- Insert products
INSERT INTO products VALUES (1, 'Laptop');
INSERT INTO products VALUES (2, 'Monitor');
INSERT INTO products VALUES (3, 'Keyboard');

-- Insert sales
INSERT INTO sales VALUES (1, 1, 1, 1500.00, '2023-01-10');
INSERT INTO sales VALUES (2, 2, 2, 2100.00, '2023-01-15');
INSERT INTO sales VALUES (3, 1, 2, 500.00, '2023-02-01');
INSERT INTO sales VALUES (4, 3, 3, 800.00, '2023-02-10');
INSERT INTO sales VALUES (5, 2, 1, 1200.00, '2023-03-05');

-- Insert sales details
INSERT INTO sales_details VALUES (1, 1, 1, 2);
INSERT INTO sales_details VALUES (2, 1, 2, 1);
INSERT INTO sales_details VALUES (3, 2, 1, 1);
INSERT INTO sales_details VALUES (4, 3, 3, 4);
INSERT INTO sales_details VALUES (5, 4, 2, 2);
INSERT INTO sales_details VALUES (6, 5, 1, 1);

-- Insert targets
INSERT INTO sales_targets VALUES (1, 3000.00, 1, 2023);
INSERT INTO sales_targets VALUES (2, 2500.00, 1, 2023);
INSERT INTO sales_targets VALUES (3, 2000.00, 1, 2023);

-- Insert payments
INSERT INTO payments VALUES (1, 1, '2023-01-11', 1500.00);
INSERT INTO payments VALUES (2, 2, '2023-01-16', 2100.00);
INSERT INTO payments VALUES (3, 3, '2023-02-02', 500.00);
INSERT INTO payments VALUES (4, 4, '2023-02-12', 800.00);
INSERT INTO payments VALUES (5, 5, '2023-03-06', 1200.00);
