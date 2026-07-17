/*
============================================================
Question 1: Find Departments with Above Average Total Salary
Difficulty: Medium
Category: Multiple CTE

Problem Statement:
Write an SQL query using multiple CTEs to calculate the total salary of each department and display only those departments whose total salary is greater than the average department salary.

Table: employees

Columns:
- emp_id
- emp_name
- department
- salary

Expected Output:
Display department name and total salary.
============================================================
*/

WITH department_salary AS
(
    SELECT
        department,
        SUM(salary) AS total_salary
    FROM employees
    GROUP BY department
),

average_salary AS
(
    SELECT AVG(total_salary) AS avg_salary
    FROM department_salary
)

SELECT
    department,
    total_salary
FROM department_salary
WHERE total_salary >
(
    SELECT avg_salary
    FROM average_salary
);

-- Explanation:
-- First CTE calculates total salary for each department.
-- Second CTE calculates the average of department totals.
-- Final query returns departments exceeding the average.
