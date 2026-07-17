/*
============================================================
Question 1: Find the Highest Paid Employee in Each Department
Difficulty: Medium
Category: Window Function - ROW_NUMBER()

Problem Statement:
Write an SQL query to find the employee with the highest salary in each department using the ROW_NUMBER() function.

Table: employees

Columns:
- emp_id
- emp_name
- department
- salary

Expected Output:
Display the highest-paid employee from every department.
============================================================
*/

WITH employee_rank AS
(
    SELECT
        emp_id,
        emp_name,
        department,
        salary,
        ROW_NUMBER() OVER
        (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS rn
    FROM employees
)

SELECT *
FROM employee_rank
WHERE rn = 1;

-- Explanation:
-- ROW_NUMBER() assigns a unique number within each department.
-- Employees are ordered by salary in descending order.
-- rn = 1 returns the highest-paid employee in each department.
