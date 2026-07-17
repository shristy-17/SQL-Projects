/*
============================================================
Question 1: Categorize Employees Based on Salary
Difficulty: Easy
Category: CASE Statement

Problem Statement:
Write an SQL query to categorize employees into different salary bands using the CASE statement.

Salary Categories:
- High Salary   : Salary >= 80000
- Medium Salary : Salary between 50000 and 79999
- Low Salary    : Salary < 50000

Table: employees

Columns:
- emp_id
- emp_name
- department
- salary

Expected Output:
Display employee ID, employee name, department, salary, and salary category.
============================================================
*/

SELECT
    emp_id,
    emp_name,
    department,
    salary,
    CASE
        WHEN salary >= 80000 THEN 'High Salary'
        WHEN salary BETWEEN 50000 AND 79999 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_category
FROM employees;

-- Explanation:
-- The CASE statement evaluates conditions in order.
-- If salary is 80000 or more, the employee is classified as 'High Salary'.
-- If salary is between 50000 and 79999, the employee is classified as 'Medium Salary'.
-- Otherwise, the employee is classified as 'Low Salary'.
