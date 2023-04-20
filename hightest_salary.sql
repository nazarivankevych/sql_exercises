-- Workers With The Highest Salaries

-- You have been asked to find the job titles of the highest-paid employees.

-- Your output should include the highest-paid title or multiple titles with the same salary.

-- Tables: worker, title

-- worker

-- worker_id: int
-- first_name: varchar
-- last_name: varchar
-- salary: int
-- joining_date: datetime
-- department: varchar


-- title

-- worker_ref_id: int
-- worker_title: varchar
-- affected_from: datetime

-- Expected Output
-- best_paid_title
-- Asst. Manager
-- Manager

SELECT title.worker_title AS best_paid_title
FROM worker
INNER JOIN title ON worker.worker_id = title.worker_ref_id
GROUP BY title.worker_title
HAVING MAX(worker.salary) = (
    SELECT MAX(salary)
    FROM worker
)
