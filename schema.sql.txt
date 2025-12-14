CREATE DATABASE swiggy_db_2025;
USE swiggy_db_2025;

-- CREATING USERS TABLE
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    city VARCHAR(30),
    email VARCHAR(30),
    phone INT,
    signup_date DATE
);

-- MODIFY PHONE COLUMN DATA TYPE
ALTER TABLE users
MODIFY phone VARCHAR(20);

-- CREATING ORDERS TABLE
CREATE TABLE orders (
    orders_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNIQUE NOT NULL,
    restaurant VARCHAR(30),
    cuisine VARCHAR(30),
    order_amount INT,
    order_date DATE,
    payment_mode VARCHAR(10) CHECK (payment_mode IN ('upi','card','cash')),
    city VARCHAR(30)
);
