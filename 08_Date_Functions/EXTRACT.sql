/*
============================================================
Question 1: Extract Year, Month, and Day from Order Date
Difficulty: Easy
Category: Date Functions - EXTRACT()

Problem Statement:
Write an SQL query to extract the year, month, and day from the order date.

Table: orders

Columns:
- order_id
- customer_name
- order_date

Expected Output:
Display order ID, customer name, order year,
order month, and order day.
============================================================
*/

SELECT
    order_id,
    customer_name,
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    EXTRACT(DAY FROM order_date) AS order_day
FROM orders;

-- Explanation:
-- EXTRACT() retrieves a specific part of a date.
-- It is commonly used for year-wise, month-wise,
-- and day-wise reporting.
