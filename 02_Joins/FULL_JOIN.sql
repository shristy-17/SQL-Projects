/*
============================================================
Question 1: Display All Employees and Departments
Difficulty: Medium
Category: FULL OUTER JOIN

Problem Statement:
Write an SQL query to display all employees and all departments, matching where possible.
============================================================
*/

SELECT
    e.emp_name,
    d.department_name
FROM employees e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id;
