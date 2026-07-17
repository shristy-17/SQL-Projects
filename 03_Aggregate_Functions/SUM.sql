/*
============================================================
Question 1: Calculate Total Salary
Difficulty: Easy
Category: SUM

Problem Statement:
Write an SQL query to calculate the total salary paid to all employees.
============================================================
*/

SELECT SUM(salary) AS total_salary
FROM employees;
