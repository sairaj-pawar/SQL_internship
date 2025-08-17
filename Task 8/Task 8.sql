-- Task 8: Stored Procedures and Functions


-- 1. Stored Procedure: Get employees by department
DELIMITER //
CREATE PROCEDURE GetEmployeesByDept(IN dept_name VARCHAR(50))
BEGIN
    SELECT e.emp_id, e.name, e.salary, d.dept_name
    FROM employees e
    JOIN departments d ON e.dept_id = d.dept_id
    WHERE d.dept_name = dept_name;
END //
DELIMITER ;

-- Call the procedure
CALL GetEmployeesByDept('IT');


-- 2. Stored Procedure with OUT parameter: Get total employees in a department
DELIMITER //
CREATE PROCEDURE CountEmployeesByDept(IN dept_name VARCHAR(50), OUT emp_count INT)
BEGIN
    SELECT COUNT(*)
    INTO emp_count
    FROM employees e
    JOIN departments d ON e.dept_id = d.dept_id
    WHERE d.dept_name = dept_name;
END //
DELIMITER ;

-- Call the procedure with OUT param
SET @count = 0;
CALL CountEmployeesByDept('HR', @count);
SELECT @count AS total_employees;


-- 3. Function: Get annual salary of an employee
DELIMITER //
CREATE FUNCTION AnnualSalary(emp_id INT) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE annual DECIMAL(10,2);
    SELECT salary * 12 INTO annual
    FROM employees
    WHERE employees.emp_id = emp_id;
    RETURN annual;
END //
DELIMITER ;

-- Call the function
SELECT name, AnnualSalary(emp_id) AS annual_salary
FROM employees;


-- 4. Function: Check if salary is above company average
DELIMITER //
CREATE FUNCTION IsAboveAverage(emp_id INT) RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    DECLARE emp_salary DECIMAL(10,2);
    DECLARE avg_salary DECIMAL(10,2);

    SELECT salary INTO emp_salary FROM employees WHERE employees.emp_id = emp_id;
    SELECT AVG(salary) INTO avg_salary FROM employees;

    IF emp_salary > avg_salary THEN
        RETURN 'YES';
    ELSE
        RETURN 'NO';
    END IF;
END //
DELIMITER ;

-- Call the function
SELECT name, IsAboveAverage(emp_id) AS above_avg
FROM employees;
