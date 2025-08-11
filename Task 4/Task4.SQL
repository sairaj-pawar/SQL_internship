-- Task 4: Aggregate Functions and Grouping

-- Step 1: Create Database
CREATE DATABASE Task4DB;
USE Task4DB;

-- Step 2: Create Table
CREATE TABLE Employees (
    EmpID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL
);

-- Step 3: Insert Data
INSERT INTO Employees (Name, Department, Salary) VALUES
('Amit', 'IT', 50000),
('Sneha', 'HR', 40000),
('Raj', 'IT', 60000),
('Priya', 'Finance', 55000),
('Kiran', 'HR', 45000),
('Anil', 'Finance', 65000),
('Sairaj', 'IT', 70000),
('Meena', 'Finance', 50000);

-- Step 4: SUM of Salary by Department
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department;

-- Step 5: AVG Salary by Department
SELECT Department, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department;

-- Step 6: COUNT Employees by Department
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;

-- Step 7: HAVING - Departments with AVG Salary > 50000
SELECT Department, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department
HAVING AverageSalary > 50000;

-- Step 8: COUNT of Unique Departments
SELECT COUNT(DISTINCT Department) AS UniqueDepartments
FROM Employees;

-- Step 9: MAX and MIN Salary by Department
SELECT Department, MAX(Salary) AS MaxSalary, MIN(Salary) AS MinSalary
FROM Employees
GROUP BY Department;
