-- Task 3: Basic SELECT Queries

-- Step 1: Create Database
CREATE DATABASE Task3DB;
USE Task3DB;

-- Step 2: Create Table
CREATE TABLE Students (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Email VARCHAR(100)
);

-- Step 3: Insert Data
INSERT INTO Students (Name, Age, Email) VALUES
('Sairaj', 23, 'sairaj@gmail.com'),
('Anita', 21, 'anita@gmail.com'),
('Rohan', 25, 'rohan@gmail.com'),
('Priya', 20, 'priya@gmail.com'),
('Raj', 30, 'raj@gmail.com'),
('Kiran', 25, 'kiran@gmail.com');

-- Step 4: SELECT Queries

-- (a) Select all columns
SELECT * FROM Students;

-- (b) Select specific columns
SELECT Name, Email FROM Students;

-- (c) WHERE clause
SELECT * FROM Students WHERE Age > 22;

-- (d) AND / OR conditions
SELECT * FROM Students WHERE Age > 20 AND Age < 30;
SELECT * FROM Students WHERE Age < 21 OR Age > 28;

-- (e) LIKE operator
SELECT * FROM Students WHERE Name LIKE 'S%';

-- (f) BETWEEN operator
SELECT * FROM Students WHERE Age BETWEEN 21 AND 25;

-- (g) ORDER BY clause
SELECT * FROM Students ORDER BY Age ASC;
SELECT * FROM Students ORDER BY Age DESC;

-- (h) LIMIT clause
SELECT * FROM Students ORDER BY Age DESC LIMIT 3;

-- (i) IN operator
SELECT * FROM Students WHERE Age IN (20, 25, 30);

-- (j) DISTINCT values
SELECT DISTINCT Age FROM Students;
