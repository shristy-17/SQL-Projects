/*
============================================================
Question 1: Calculate Employee Probation End Date
Difficulty: Easy
Category: Date Functions - DATE_ADD()

Problem Statement:
Write an SQL query to calculate the probation end date for each employee.
Assume the probation period is 6 months from the joining date.

Table: employees

Columns:
- emp_id
- emp_name
- joining_date

Expected Output:
Display employee ID, employee name, joining date,
and probation end date.
============================================================
*/

SELECT
    emp_id,
    emp_name,
    joining_date,
    DATE_ADD(joining_date, INTERVAL 6 MONTH) AS probation_end_date
FROM employees;

-- Explanation:
-- DATE_ADD() adds a specified time interval to a date.
-- Here, 6 months are added to the joining date.
