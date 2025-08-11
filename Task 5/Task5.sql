-- Task 5: SQL Joins (Inner, Left, Right, Full Outer)

-- Step 1: Create Database
CREATE DATABASE Task5DB;
USE Task5DB;

-- Step 2: Create Customers table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    City VARCHAR(50)
);

-- Step 3: Create Orders table
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Step 4: Insert sample data into Customers
INSERT INTO Customers (CustomerName, City) VALUES
('Sairaj Pawar', 'Satara'),
('Anita Joshi', 'Pune'),
('Rohan Patil', 'Mumbai'),
('Priya Deshmukh', 'Kolhapur');

-- Step 5: Insert sample data into Orders
INSERT INTO Orders (OrderDate, CustomerID, Amount) VALUES
('2025-08-01', 1, 2500.00),
('2025-08-03', 3, 1800.00),
('2025-08-05', 1, 3000.00),
('2025-08-07', 2, 1500.00);

-- Step 6: INNER JOIN - Matching data from both tables
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Step 7: LEFT JOIN - All customers + matching orders
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Step 8: RIGHT JOIN - All orders + matching customers
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Step 9: FULL OUTER JOIN - All customers and all orders
-- MySQL does not have FULL JOIN directly, use UNION
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
