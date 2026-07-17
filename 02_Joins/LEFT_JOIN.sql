/*
============================================================
Question 1: Find Employees Without Departments
Difficulty: Easy
Category: LEFT JOIN

Problem Statement:
Write an SQL query to display all employees, including those who are not assigned to any department.
============================================================
*/

SELECT
    e.emp_name,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;
