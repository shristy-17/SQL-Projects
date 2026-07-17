/*
============================================================
Question 1: Retrieve Employee Name and Salary
Difficulty: Easy
Category: SELECT Statement
============================================================

Problem Statement:
Write an SQL query to display only the employee name and salary from the employees table.

Expected Output:

+------------+--------+
| emp_name   | salary |
+------------+--------+
| Alice      | 55000  |
| Bob        | 70000  |
| Charlie    | 65000  |
| David      | 72000  |
+------------+--------+
*/

SELECT
    emp_name,
    salary
FROM employees;

-- Explanation
-- The SELECT statement is used to retrieve specific columns from a table.

-- Solution

SELECT *
FROM employees;

-- Explanation
-- SELECT * retrieves all columns from the employees table.
-- This is commonly used to view the complete data in a table.
