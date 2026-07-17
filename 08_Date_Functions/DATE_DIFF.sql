/*
============================================================
Question 1: Calculate Delivery Time
Difficulty: Easy
Category: Date Functions - DATEDIFF()

Problem Statement:
Write an SQL query to calculate the number of days taken to deliver each order.

Table: orders

Columns:
- order_id
- customer_name
- order_date
- delivery_date

Expected Output:
Display order ID, customer name, order date,
delivery date, and total delivery days.
============================================================
*/

SELECT
    order_id,
    customer_name,
    order_date,
    delivery_date,
    DATEDIFF(delivery_date, order_date) AS delivery_days
FROM orders;

-- Explanation:
-- DATEDIFF() calculates the difference between two dates.
-- It returns the number of days taken to deliver each order.
