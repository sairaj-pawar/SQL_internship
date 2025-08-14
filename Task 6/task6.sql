-- Task 6: Subqueries and Nested Queries


-- 1. Subquery in WHERE clause
-- Find employees whose salary is above the average salary
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 2. Subquery in SELECT clause (Scalar Subquery)
-- Show each employee with the highest salary in the company
SELECT name, salary,
       (SELECT MAX(salary) FROM employees) AS highest_salary
FROM employees;

-- 3. Subquery in FROM clause (Derived Table)
-- Get department-wise average salary
SELECT dept_id, avg_salary
FROM (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY dept_id
) AS dept_avg;

-- 4. IN with Subquery
-- Find employees working in departments located in 'New York'
SELECT name
FROM employees
WHERE dept_id IN (
    SELECT dept_id FROM departments WHERE location = 'New York'
);

-- 5. EXISTS with Subquery
-- Find employees who have at least one project assigned
SELECT e.name
FROM employees e
WHERE EXISTS (
    SELECT 1 FROM projects p WHERE p.emp_id = e.emp_id
);

-- 6. Correlated Subquery
-- Find employees earning more than the average salary of their department
SELECT name, salary, dept_id
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE dept_id = e.dept_id
);
