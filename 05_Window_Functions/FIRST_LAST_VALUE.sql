/*
============================================================
Question 1: Find the Highest and Lowest Salary in Each Department
Difficulty: Hard
Category: Window Function - FIRST_VALUE() & LAST_VALUE()

Problem Statement:
Write an SQL query to display the highest and lowest salary in each department using FIRST_VALUE() and LAST_VALUE().

Expected Output:
Display employee name, department, highest salary, and lowest salary.
============================================================
*/

SELECT
    emp_name,
    department,
    salary,

    FIRST_VALUE(salary)
    OVER
    (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS highest_salary,

    LAST_VALUE(salary)
    OVER
    (
        PARTITION BY department
        ORDER BY salary DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS lowest_salary

FROM employees;

-- Explanation:
-- FIRST_VALUE() returns the highest salary in each department.
-- LAST_VALUE() returns the lowest salary.
-- The frame clause is required so LAST_VALUE() evaluates across the
-- entire partition instead of stopping at the current row.
