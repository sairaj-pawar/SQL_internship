# Library Management Database Project

This project is created as part of the SQL Developer Internship - Task 1.  
It demonstrates a basic Library Management System using relational database concepts in MySQL.

## Objective

- Understand and implement database design
- Create tables with appropriate keys and relationships
- Use DDL commands effectively
- Design an ER Diagram

## Database Name

LibraryDB

## Tables

1. Author
2. Book
3. Member
4. Issue

## Relationships

- One Author can write many Books (One-to-Many)
- One Member can issue many Books (One-to-Many)
- A Book can be issued to only one Member at a time
- Book table has a foreign key to Author
- Issue table has foreign keys to Book and Member

## ER Diagram

The ER Diagram for the project is available in the file:  
`Library_ER_Diagram.png`

## SQL Script

The complete SQL schema and sample data are available in the file:  
`schema.sql`

This includes:
- `CREATE DATABASE`
- `CREATE TABLE`
- `INSERT INTO`

## Tools Used

- MySQL Workbench
- ER Diagram (Forward Engineer or Export)


