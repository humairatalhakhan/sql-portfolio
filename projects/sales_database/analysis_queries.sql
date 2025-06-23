-- 1. Total sales by salesperson
SELECT s.name, SUM(sa.amount) AS total_sales
FROM salespersons s
JOIN sales sa ON s.salesperson_id = sa.salesperson_id
GROUP BY s.name;

-- 2. List customers and their total purchases
SELECT c.name, SUM(sa.amount) AS total_purchases
FROM customers c
JOIN sales sa ON c.customer_id = sa.customer_id
GROUP BY c.name;

-- 3. Find the salesperson with the highest sale
SELECT s.name, sa.amount
FROM sales sa
JOIN salespersons s ON sa.salesperson_id = s.salesperson_id
ORDER BY sa.amount DESC
LIMIT 1;

-- 4. Sales by region
SELECT r.region_name, SUM(s.amount) AS total_sales
FROM sales s
JOIN salesperson_regions sr ON s.salesperson_id = sr.salesperson_id
JOIN regions r ON sr.region_id = r.region_id
GROUP BY r.region_name;

-- 5. Sales target achievement per salesperson
SELECT s.name, t.target_amount, SUM(sa.amount) AS actual_sales
FROM salespersons s
JOIN sales sa ON s.salesperson_id = sa.salesperson_id
JOIN sales_targets t ON s.salesperson_id = t.salesperson_id
GROUP BY s.name, t.target_amount;

-- 6. Sales per product
SELECT p.product_name, SUM(sd.quantity) AS total_sold
FROM products p
JOIN sales_details sd ON p.product_id = sd.product_id
GROUP BY p.product_name;

-- 7. Customers with more than two purchases
SELECT c.name, COUNT(sa.sale_id) AS num_purchases
FROM customers c
JOIN sales sa ON c.customer_id = sa.customer_id
GROUP BY c.name
HAVING num_purchases > 2;

-- 8. Months with highest sales
SELECT MONTH(sale_date) AS sale_month, SUM(amount) AS total_sales
FROM sales
GROUP BY MONTH(sale_date)
ORDER BY total_sales DESC;

-- 9. Average sale amount per salesperson
SELECT s.name, AVG(sa.amount) AS avg_sale
FROM salespersons s
JOIN sales sa ON s.salesperson_id = sa.salesperson_id
GROUP BY s.name;

-- 10. Unpaid sales (assuming payment amount < sale amount)
SELECT sa.sale_id, sa.amount, COALESCE(SUM(p.amount), 0) AS paid
FROM sales sa
LEFT JOIN payments p ON sa.sale_id = p.sale_id
GROUP BY sa.sale_id, sa.amount
HAVING paid < sa.amount;
