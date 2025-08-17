-- Task 7: Creating Views
-- Author: Sairaj Mohan Pawar

-- 1. Create a simple view of employees with salary greater than 50000
CREATE VIEW high_salary_employees AS
SELECT emp_id, name, salary, dept_id
FROM employees
WHERE salary > 50000;

-- Use the view
SELECT * FROM high_salary_employees;


-- 2. Create a view showing department-wise average salary
CREATE VIEW dept_avg_salary AS
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;

-- Use the view
SELECT * FROM dept_avg_salary;


-- 3. Create a view joining employees and departments
CREATE VIEW emp_dept_details AS
SELECT e.emp_id, e.name, e.salary, d.dept_name, d.location
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- Use the view
SELECT * FROM emp_dept_details;


-- 4. Create a view with projects assigned to employees
CREATE VIEW emp_project_details AS
SELECT e.name AS employee_name, p.project_name
FROM employees e
JOIN projects p ON e.emp_id = p.emp_id;

-- Use the view
SELECT * FROM emp_project_details;


-- 5. Update using a view (if allowed by DBMS)
-- Example: Increase salary by 10% for all high salary employees
UPDATE high_salary_employees
SET salary = salary * 1.10;


-- 6. Drop a view
DROP VIEW IF EXISTS emp_project_details;
