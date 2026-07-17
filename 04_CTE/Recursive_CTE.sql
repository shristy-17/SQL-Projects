/*
============================================================
Question 1: Display Employee Hierarchy
Difficulty: Hard
Category: Recursive CTE

Problem Statement:
Write an SQL query using a Recursive CTE to display the organizational hierarchy starting from the CEO.

Table: employees

Columns:
- emp_id
- emp_name
- manager_id

Assumptions:
- CEO has manager_id = NULL

Expected Output:
Display employee ID, employee name, manager ID, and hierarchy level.
============================================================
*/

WITH RECURSIVE employee_hierarchy AS
(
    -- Anchor Member
    SELECT
        emp_id,
        emp_name,
        manager_id,
        1 AS level
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    -- Recursive Member
    SELECT
        e.emp_id,
        e.emp_name,
        e.manager_id,
        eh.level + 1
    FROM employees e
    INNER JOIN employee_hierarchy eh
        ON e.manager_id = eh.emp_id
)

SELECT *
FROM employee_hierarchy
ORDER BY level, emp_id;

-- Explanation:
-- Anchor member starts with the CEO.
-- Recursive member repeatedly finds employees reporting to managers.
-- The recursion continues until all employees are included.
