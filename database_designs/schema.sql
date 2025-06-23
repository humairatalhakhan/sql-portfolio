-- 1. Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

-- 2. Orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 3. Products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT
);

-- 4. Categories table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- 5. Order items table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- 6. Salespersons table
CREATE TABLE salespersons (
    salesperson_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- 7. Addresses table
CREATE TABLE addresses (
    address_id INT PRIMARY KEY,
    customer_id INT,
    address VARCHAR(200),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 8. Payments table
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- 9. Reviews table
CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    rating INT,
    comment TEXT,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 10. Inventory table
CREATE TABLE inventory (
    product_id INT PRIMARY KEY,
    quantity INT,
    last_updated DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
