/*
============================================================
Question 1: Rank Employees by Salary
Difficulty: Medium
Category: Window Function - RANK()

Problem Statement:
Write an SQL query to rank employees based on salary within each department using the RANK() function.

Expected Output:
Display employee name, department, salary, and rank.
============================================================
*/

SELECT
    emp_id,
    emp_name,
    department,
    salary,
    RANK() OVER
    (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;

-- Explanation:
-- Employees with the same salary receive the same rank.
-- The next rank is skipped when there are ties.
