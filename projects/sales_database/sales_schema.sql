-- Salespersons table
CREATE TABLE salespersons (
    salesperson_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Sales table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    salesperson_id INT,
    customer_id INT,
    amount DECIMAL(10,2),
    sale_date DATE,
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Regions table
CREATE TABLE regions (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(100)
);

-- Assign regions to salespersons
CREATE TABLE salesperson_regions (
    salesperson_id INT,
    region_id INT,
    PRIMARY KEY (salesperson_id, region_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id),
    FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

-- Products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100)
);

-- Sales details table
CREATE TABLE sales_details (
    sale_detail_id INT PRIMARY KEY,
    sale_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (sale_id) REFERENCES sales(sale_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Targets table
CREATE TABLE sales_targets (
    salesperson_id INT,
    target_amount DECIMAL(10,2),
    target_month INT,
    target_year INT,
    PRIMARY KEY (salesperson_id, target_month, target_year),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id)
);

-- Payments table
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    sale_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (sale_id) REFERENCES sales(sale_id)
);
