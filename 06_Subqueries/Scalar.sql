/*
============================================================
Question 1: Find Employees Earning Above Average Salary
Difficulty: Medium
Category: Scalar Subquery

Problem Statement:
Write an SQL query to find employees whose salary is greater than the average salary of all employees using a scalar subquery.

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

SELECT
    emp_id,
    emp_name,
    department,
    salary
FROM employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
);

-- Explanation:
-- The subquery returns a single value (average salary).
-- The outer query compares each employee's salary with that value.
