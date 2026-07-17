/*
============================================================
Question 1: Departments with More Than 5 Employees
Difficulty: Medium
Category: HAVING

Problem Statement:
Write an SQL query to display departments having more than 5 employees.
============================================================
*/

SELECT
    department,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
