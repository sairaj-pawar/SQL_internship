--Task 2




-- Create Database and Use it
CREATE DATABASE Task2DB;
USE Task2DB;

-- Create Table
CREATE TABLE Students (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Email VARCHAR(100) DEFAULT 'not_provided@example.com'
);

-- Insert Statements
INSERT INTO Students (Name, Age, Email)
VALUES 
('Sairaj', 23, 'sairaj@gmail.com'),
('Anita', 21, DEFAULT),
('Rohan', NULL, NULL);

-- Update Statement
UPDATE Students
SET Email = 'rohan.updated@example.com'
WHERE Name = 'Rohan';

-- Delete Statement
DELETE FROM Students
WHERE Age IS NULL;

-- Insert Using SELECT
INSERT INTO Students (Name, Age, Email)
SELECT Name, Age, Email FROM Students WHERE ID = 1;
