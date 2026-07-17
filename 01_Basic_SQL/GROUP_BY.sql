/*
============================================================
Question 1: Department-wise Employee Count
Difficulty: Easy
Category: GROUP BY

Problem Statement:
Write an SQL query to count the number of employees in each department.
============================================================
*/

SELECT
    department,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department;
