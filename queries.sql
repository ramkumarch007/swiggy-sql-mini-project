-- SQL TASK

-- BASIC SELECT
-- 1. Show all orders placed in 2024
SELECT *
FROM orders
WHERE YEAR(order_date) = 2024;

-- 2. Display all users from Mumbai
SELECT *
FROM users
WHERE city = 'Mumbai';

-- 3. Show all Biryani orders
SELECT *
FROM orders
WHERE cuisine = 'Biryani';

-- 4. Display all Fast Food orders
SELECT *
FROM orders
WHERE cuisine = 'Fast Food';

-- 5. List all restaurants available in Hyderabad
SELECT restaurant
FROM orders
WHERE city = 'Hyderabad';

-- B. FILTERING (WHERE)
-- 1. Show orders with amount > 500
SELECT *
FROM orders
WHERE order_amount > 500;

-- 2. Find all orders paid by UPI
SELECT *
FROM orders
WHERE payment_mode = 'UPI';

-- 3. Show all Pizza orders
SELECT *
FROM orders
WHERE cuisine = 'Pizza';

-- 4. Display users who joined after 2024
SELECT *
FROM users
WHERE YEAR(signup_date) >= 2024;

-- 5. Show orders where cuisine = 'North Indian'
SELECT *
FROM orders
WHERE cuisine = 'North Indian';

-- C. SORTING (ORDER BY)
-- 1. Sort orders by amount (highest first)
SELECT *
FROM orders
ORDER BY order_amount DESC;

-- 2. List users by signup date (newest first)
SELECT *
FROM users
ORDER BY signup_date DESC;

-- 3. Show top 5 highest bill amounts
SELECT *
FROM orders
ORDER BY order_amount DESC
LIMIT 5;

-- D. PATTERN SEARCHING (LIKE)
-- 1. Show restaurants starting with 'B'
SELECT restaurant
FROM orders
WHERE restaurant LIKE 'B%';

-- 2. Find users whose email ends with 'gmail.com'
SELECT *
FROM users
WHERE email LIKE '%gmail.com';

-- 3. Show cuisine names containing 'Indian'
SELECT cuisine
FROM orders
WHERE cuisine LIKE '%Indian%';

-- E. AGGREGATION + GROUP BY
-- 1. Count orders per city
SELECT city, COUNT(*) AS total_orders
FROM orders
GROUP BY city;

-- 2. Count users per city
SELECT city, COUNT(DISTINCT user_id) AS total_users
FROM orders
GROUP BY city;

-- 3. Count orders per cuisine
SELECT cuisine, COUNT(orders_id) AS total_orders
FROM orders
GROUP BY cuisine;

-- 4. Find average order amount per cuisine
SELECT cuisine, AVG(order_amount) AS avg_order_amount
FROM orders
GROUP BY cuisine;

-- 5. Find highest order total per user
SELECT user_id, MAX(order_amount) AS highest_order
FROM orders
GROUP BY user_id;
