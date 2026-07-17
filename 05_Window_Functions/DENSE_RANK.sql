/*
============================================================
Question 1: Assign Dense Rank to Employees by Salary
Difficulty: Medium
Category: Window Function - DENSE_RANK()

Problem Statement:
Write an SQL query to assign a dense rank to employees based on salary within each department.

Expected Output:
Display employee name, salary, department, and dense rank.
============================================================
*/

SELECT
    emp_id,
    emp_name,
    department,
    salary,
    DENSE_RANK() OVER
    (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS dense_rank
FROM employees;

-- Explanation:
-- Employees with equal salaries receive the same rank.
-- Unlike RANK(), no rank numbers are skipped.
