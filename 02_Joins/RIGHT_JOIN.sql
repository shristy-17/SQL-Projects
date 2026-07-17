/*
============================================================
Question 1: Display All Departments
Difficulty: Medium
Category: RIGHT JOIN

Problem Statement:
Write an SQL query to display all departments, including departments that have no employees.
============================================================
*/

SELECT
    e.emp_name,
    d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;
