# Swiggy SQL Mini Project 🍽️📊

This is a SQL-based mini project inspired by a food delivery platform such as **Swiggy**.  
The project focuses on database design, data insertion, and performing analytical queries on real-world–style data.

> **Note:** This project uses mock/sample data created strictly for learning and practice purposes.

---

## 🛠️ Tools & Technologies
- MySQL
- SQL (DDL, DML, Filtering, Aggregations)

---

## 📂 Project Structure
swiggy-sql-mini-project/
│
├── schema.sql # Database & table creation
├── insert_data.sql # Data insertion
├── queries.sql # Analytical SQL queries
└── README.md



## 🗂️ Database Schema

### 1️⃣ users table
Stores user information such as city, email, phone number, and signup date.

**Columns:**
- user_id (Primary Key)
- name
- city
- email
- phone
- signup_date

---

### 2️⃣ orders table
Stores order-level details including restaurant, cuisine, order amount, payment mode, and order date.

**Columns:**
- orders_id (Primary Key)
- user_id
- restaurant
- cuisine
- order_amount
- order_date
- payment_mode
- city

---

## 🔍 SQL Concepts Covered
- CREATE DATABASE and CREATE TABLE
- ALTER TABLE
- INSERT INTO
- WHERE clause filtering
- ORDER BY sorting
- LIKE pattern matching
- GROUP BY with aggregate functions
- Aggregate functions: COUNT, AVG, MAX

---

## 📊 Sample Analysis Performed
- Orders placed in the year 2024
- Users filtered by city
- Most popular cuisines
- Orders count per city
- Average order value by cuisine
- Highest order value per user
- Payment mode–based filtering

---

## ▶️ How to Run the Project
1. Run `schema.sql` to create the database and tables  
2. Run `insert_data.sql` to insert sample data  
3. Execute queries from `queries.sql` to perform analysis  

---

## 🎯 Project Outcome
Through this project, I strengthened my understanding of:
- Designing relational database schemas
- Writing clean, readable, and optimized SQL queries
- Performing real-world data analysis using SQL

---

## 🚀 Future Improvements
- Add foreign key constraints
- Normalize tables further
- Implement indexing for performance optimization
- Use joins and subqueries for advanced analysis

---

⭐ Feel free to explore the project and share feedback.
