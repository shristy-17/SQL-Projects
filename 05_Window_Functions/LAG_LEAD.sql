/*
============================================================
Question 1: Compare Current Month Sales with Previous Month
Difficulty: Medium
Category: Window Function - LAG()

Problem Statement:
Write an SQL query to display the current month's sales along with the previous month's sales for each product.

Table: monthly_sales

Columns:
- product_id
- sales_month
- sales_amount

Expected Output:
Display product ID, month, current sales, and previous month's sales.
============================================================
*/

SELECT
    product_id,
    sales_month,
    sales_amount,
    LAG(sales_amount)
    OVER
    (
        PARTITION BY product_id
        ORDER BY sales_month
    ) AS previous_month_sales
FROM monthly_sales;

-- Explanation:
-- LAG() retrieves the previous row's value within each product.
-- Useful for month-over-month analysis.
