-- 1. Select all customers
SELECT * FROM customers;

-- 2. Select customer names and cities
SELECT name, city FROM customers;

-- 3. Select unique cities
SELECT DISTINCT city FROM customers;

-- 4. Select orders with amount greater than 1000
SELECT * FROM orders WHERE amount > 1000;

-- 5. Select customers from 'London'
SELECT * FROM customers WHERE city = 'London';

-- 6. Select top 5 most recent orders
SELECT * FROM orders ORDER BY order_date DESC LIMIT 5;

-- 7. Select customers with names starting with 'A'
SELECT * FROM customers WHERE name LIKE 'A%';

-- 8. Select orders placed in 2024
SELECT * FROM orders WHERE YEAR(order_date) = 2024;

-- 9. Select total number of orders
SELECT COUNT(*) FROM orders;

-- 10. Select the maximum order amount
SELECT MAX(amount) AS max_order_amount FROM orders;
