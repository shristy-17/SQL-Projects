/*
============================================================
Question 1: Display Employee and Department Names
Difficulty: Easy
Category: INNER JOIN

Problem Statement:
Write an SQL query to display employee names along with their department names.
============================================================
*/

SELECT
    e.emp_name,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;
