/*
============================================================
Question 1: Display Employees with Their Managers
Difficulty: Medium
Category: SELF JOIN

Problem Statement:
Write an SQL query to display each employee along with their manager's name.
============================================================
*/

SELECT
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;
