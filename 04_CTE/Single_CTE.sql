/*
============================================================
Question 1: Find Employees Earning Above Average Salary
Difficulty: Medium
Category: Common Table Expression (CTE)

Problem Statement:
Write an SQL query using a Common Table Expression (CTE) to find all employees whose salary is greater than the average salary of all employees.

Table: employees

Columns:
- emp_id
- emp_name
- department
- salary

Expected Output:
Display employee ID, employee name, department, and salary for employees earning above the company average.
============================================================
*/

WITH avg_salary AS (
    SELECT AVG(salary) AS avg_sal
    FROM employees
)

SELECT
    emp_id,
    emp_name,
    department,
    salary
FROM employees
WHERE salary >
(
    SELECT avg_sal
    FROM avg_salary
);

-- Explanation:
-- 1. The CTE calculates the average salary.
-- 2. The main query retrieves employees whose salary exceeds the average.
