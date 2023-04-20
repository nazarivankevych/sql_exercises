-- We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. Find the current salary of each employee assuming that salaries increase each year. Output their id, first name, last name, department ID, and current salary. Order your list by employee ID in ascending order.

-- Table: ms_employee_salary


-- Approach Hints
-- Ideally this dataset should consists of unique records of employees for only current year
-- There are multiple years of data can be found for some employees
-- Until now at every compensation revision cycle, all employees have received a salary increase so you can assume that the highest salary is the employee's current salary. Use a max() function to find the highest salary for each employee.
-- The output should be all the details of all the employees with correct salary

-- Expected Output

-- id	first_name	last_name	department_id	max
-- 1	Todd	Wilson	1006	110000
-- 2	Justin	Simon	1005	130000
-- 3	Kelly	Rosario	1002	42689
-- 4	Patricia	Powell	1004	170000
-- 5	Sherry	Golden	1002	44101

-- ms_employee_salary
-- Preview
-- id:
-- int
-- first_name:
-- varchar
-- last_name:
-- varchar
-- salary:
-- int
-- department_id:
-- int


SELECT e.id, e.first_name, e.last_name, e.department_id, max(s.salary) as max
FROM ms_employee_salary s
JOIN ms_employee e
ON s.id = e.id
GROUP BY e.id, e.first_name, e.last_name, e.department_id
ORDER BY e.id ASC;