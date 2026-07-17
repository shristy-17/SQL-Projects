/*
============================================================
Question 1: Find Employees Earning Above Their Department Average
Difficulty: Hard
Category: Correlated Subquery

Problem Statement:
Write an SQL query to find employees whose salary is greater than the average salary of their respective department using a correlated subquery.

Table: employees

Columns:
- emp_id
- emp_name
- department
- salary

Expected Output:
Display employees earning more than the average salary in their own department.
============================================================
*/

SELECT
    e1.emp_id,
    e1.emp_name,
    e1.department,
    e1.salary
FROM employees e1
WHERE e1.salary >
(
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department = e1.department
);

-- Explanation:
-- The inner query executes once for each row of the outer query.
-- It calculates the average salary for the current employee's department.
-- Employees earning above their department average are returned.
