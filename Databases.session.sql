/*
=============================================================
Database Creation and Table Setup Script
=============================================================
Script Purpose:
    This script creates a new SQL Server database named 'MyDatabase'. 
    If the database already exists, it is dropped to ensure a clean setup. 
    The script then creates three tables: 'customers', 'orders', and 'employees' 
    with their respective schemas, and populates them with sample data.
    
WARNING:
    Running this script will drop the entire 'MyDatabase' database if it exists, 
    permanently deleting all data within it. Proceed with caution and ensure you 
    have proper backups before executing this script.
*/
-- Drop and recreate the 'MyDatabase' database
DROP DATABASE IF EXISTS MyDatabase;
CREATE DATABASE MyDatabase;
USE MyDatabase;

-- Table: customers
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  id INT NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  country VARCHAR(50),
  score INT,
  PRIMARY KEY (id)
);

-- Insert customers data
INSERT INTO customers (id, first_name, country, score) VALUES
(1, 'Maria', 'Germany', 350),
(2, 'John', 'USA', 900),
(3, 'Georg', 'UK', 750),
(4, 'Martin', 'Germany', 500),
(5, 'Peter', 'USA', 0);

-- Table: orders
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  order_id INT NOT NULL,
  customer_id INT NOT NULL,
  order_date DATE,
  sales INT,
  PRIMARY KEY (order_id)
);

-- Insert orders data
INSERT INTO orders (order_id, customer_id, order_date, sales) VALUES
(1001, 1, '2021-01-11', 35),
(1002, 2, '2021-04-05', 15),
(1003, 3, '2021-06-18', 20),
(1004, 6, '2021-08-31', 10);

-- ======================================================
-- Table: customers
-- ======================================================

DROP TABLE  IF EXISTS SalesCustomers;
CREATE TABLE SalesCustomers(
    CustomerID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Score INT,
    CONSTRAINT PK_customers PRIMARY KEY (CustomerID)
);


-- Insert data into Customer table
INSERT INTO SalesCustomers (CustomerID, FirstName, LastName, Country, Score) VALUES
    (1, 'Jossef', 'Goldberg', 'Germany', 350),
    (2, 'Kevin', 'Brown', 'USA', 900),
    (3, 'Mary', NULL, 'USA', 750),
    (4, 'Mark', 'Schwarz', 'Germany', 500),
    (5, 'Anna', 'Adams', 'USA', NULL);

    -- ======================================================
-- Table: Employee
-- ======================================================

-- Create Employee table
DROP TABLE  IF EXISTS SalesEmployees;
CREATE TABLE SalesEmployees (
    EmployeeID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    BirthDate DATE,
    Gender CHAR(1),
    Salary INT,
	ManagerID INT,
	CONSTRAINT PK_employees PRIMARY KEY (EmployeeID)
);

-- Insert data into Employee table
INSERT INTO SalesEmployees(EmployeeID,FirstName, LastName, Department, BirthDate, Gender, Salary, ManagerID) VALUES
    (1, 'Frank', 'Lee', 'Marketing', '1988-12-05', 'M', 55000, null),
    (2, 'Kevin', 'Brown', 'Marketing', '1972-11-25', 'M', 65000, 1),
    (3, 'Mary', null, 'Sales', '1986-01-05', 'F', 75000, 1),
    (4, 'Michael', 'Ray', 'Sales', '1977-02-10', 'M', 90000, 2),
    (5, 'Carol', 'Baker', 'Sales', '1982-02-11', 'F', 55000, 3);




