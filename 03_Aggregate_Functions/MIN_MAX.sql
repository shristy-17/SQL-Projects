/*
============================================================
Question 1: Find Highest and Lowest Salary
Difficulty: Easy
Category: MIN & MAX

Problem Statement:
Write an SQL query to find the highest and lowest salary in the employees table.
============================================================
*/

SELECT
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM employees;
