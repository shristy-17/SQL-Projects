/*
============================================================
Question 1: Find Employees Working in the Department with the Highest Average Salary
Difficulty: Hard
Category: Nested Subquery

Problem Statement:
Write an SQL query to display all employees who work in the department having the highest average salary.

Table: employees

Columns:
- emp_id
- emp_name
- department
- salary

Expected Output:
Display employee ID, employee name, department, and salary.
============================================================
*/

SELECT
    emp_id,
    emp_name,
    department,
    salary
FROM employees
WHERE department =
(
    SELECT department
    FROM
    (
        SELECT
            department,
            AVG(salary) AS avg_salary
        FROM employees
        GROUP BY department
        ORDER BY avg_salary DESC
        LIMIT 1
    ) t
);

-- Explanation:
-- The innermost query calculates the average salary for each department.
-- The middle query identifies the department with the highest average salary.
-- The outer query returns all employees from that department.
