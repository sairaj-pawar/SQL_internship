-- Task 1



-- Create the database
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- Author Table
CREATE TABLE Author (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL
);

-- Book Table
CREATE TABLE Book (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100) NOT NULL,
    Genre VARCHAR(50),
    PublishedYear YEAR,
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

-- Member Table
CREATE TABLE Member (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    JoinDate DATE
);

-- Issue Table
CREATE TABLE Issue (
    IssueID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    MemberID INT,
    IssueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

-- Insert data into Author
INSERT INTO Author (Name) VALUES 
('Chetan Bhagat'),
('J.K. Rowling'),
('Sudha Murty');

-- Insert data into Book
INSERT INTO Book (Title, Genre, PublishedYear, AuthorID) VALUES 
('Half Girlfriend', 'Romance', 2014, 1),
('Harry Potter and the Chamber of Secrets', 'Fantasy', 1998, 2),
('The Magic Drum', 'Folk Stories', 2003, 3);

-- Insert data into Member
INSERT INTO Member (Name, Email, JoinDate) VALUES 
('Sairaj Pawar', 'sairaj@example.com', '2025-01-10'),
('Anita Kulkarni', 'anita.k@example.com', '2025-03-05'),
('Rohan Deshmukh', 'rohan.d@example.com', '2025-07-15');

-- Insert data into Issue
INSERT INTO Issue (BookID, MemberID, IssueDate, ReturnDate) VALUES 
(1, 1, '2025-08-01', '2025-08-10'),
(2, 2, '2025-08-02', '2025-08-12'),
(3, 3, '2025-08-03', NULL);
