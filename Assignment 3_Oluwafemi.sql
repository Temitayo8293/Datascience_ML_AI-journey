/*

Oladosu Oluwafemi Timothy 
DAS/2026/TC-6/0062
Assignment 3 and 4

*/

--To create the database
CREATE DATABASE QuickMart;
USE QuickMart

-- To create the wmployee table
CREATE TABLE Employees (
	EmployeeID INT PRIMARY KEY,
	EmployeeName VARCHAR(100),
	Department VARCHAR(50),
	Salary DECIMAL(10, 2),
	HireDate DATE
);
--To populate the employee table with 10 records
INSERT INTO Employees (EmployeeID, EmployeeName, Department, Salary, HireDate)
VALUES (001, 'John Doe', 'Sales', 50000.00, '2020-01-15'),
(002, 'Jane Smith', 'Marketing', 55000.00, '2019-03-10'),
(003, 'Michael Brown', 'IT', 60000.00, '2021-06-01'),
(004, 'Emily Davis', 'HR', 45000.00, '2018-11-20'),
(005, 'David Wilson', 'Finance', 70000.00, '2022-02-28'),
(006, 'Sarah Johnson', 'Operations', 48000.00, '2019-08-05'),
(007, 'Chris Lee', 'Customer Service', 42000.00, '2020-05-12'),
(008, 'Amanda Martinez', 'Logistics', 53000.00, '2021-09-30'),
(009, 'James Anderson', 'Research and Development', 75000.00, '2018-04-18'),
(0010, 'Jessica Taylor', 'Legal', 65000.00, '2019-12-01')

--creating the product table
CREATE TABLE Products (
	ProductID VARCHAR(100) PRIMARY KEY,
	ProductName VARCHAR(200),
	Category VARCHAR(100),
	Price DECIMAL(10, 2),
	StockQuantity INT
);
--populating the product table with 15 records
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity)
VALUES ('P001', 'Laptop', 'Electronics', 999.99, 50),
('P002', 'Smartphone', 'Electronics', 499.99, 100),
('P003', 'Headphones', 'Accessories', 199.99, 200),
('P004', 'Office Chair', 'Furniture', 149.99, 30),
('P005', 'Desk Lamp', 'Furniture', 39.99, 80),
('P006', 'Wireless Mouse', 'Accessories', 29.99, 150),
('P007', 'Keyboard', 'Accessories', 49.99, 120),
('P008', 'Monitor', 'Electronics', 299.99, 40),
('P009', 'External Hard Drive', 'Electronics', 89.99, 60),
('P010', 'USB Flash Drive', 'Accessories', 19.99, 300),
('P011', 'Gaming Console', 'Electronics', 399.99, 25),
('P012', 'Smartwatch', 'Electronics', 199.99, 70),
('P013', 'Bluetooth Speaker', 'Accessories', 59.99, 90),
('P014', 'Printer', 'Electronics', 149.99, 35),
('P015', 'Router', 'Electronics', 79.99, 55)

-- Creating the customers table

CREATE TABLE Customers (
	CustomerID VARCHAR(50) PRIMARY KEY,
	CustomerName VARCHAR(200),
	City VARCHAR(100),
	Age INT,
);

-- Populating the customers table with 12 records
INSERT INTO Customers (CustomerID, CustomerName, City, Age)
VALUES ('C001', 'Alice Johnson', 'New York', 30),
('C002', 'Bob Smith', 'Los Angeles', 25),
('C003', 'Charlie Brown', 'Chicago', 35),
('C004', 'David Wilson', 'Houston', 28),
('C005', 'Emily Davis', 'Phoenix', 32),
('C006', 'Frank Miller', 'Philadelphia', 40),
('C007', 'Grace Lee', 'San Antonio', 22),
('C008', 'Henry Taylor', 'San Diego', 27),
('C009', 'Isabella Martinez', 'Dallas', 31),
('C010', 'Jack Anderson', 'San Jose', 29),
('C011', 'Karen Thomas', 'Austin', 33),
('C012', 'Leo Garcia', 'Jacksonville', 26)

--creating the sales table

CREATE TABLE Sales (
	SaleID VARCHAR(200) PRIMARY KEY,
	ProductID VARCHAR(100),
	CustomerID VARCHAR(50),
	EmployeeID INT,
	Quantity INT,
	SaleDate DATE,
);

-- populating the sales table with 20 records
INSERT INTO Sales (SaleID, ProductID, CustomerID, EmployeeID, Quantity, SaleDate)
VALUES ('S001', 'P001', 'C001', 001, 1, '2023-01-15'),
('S002', 'P002', 'C002', 002, 2, '2023-02-20'),
('S003', 'P003', 'C003', 003, 1, '2023-03-10'),
('S004', 'P004', 'C004', 004, 1, '2023-04-05'),
('S005', 'P005', 'C005', 005, 3, '2023-05-12'),
('S006', 'P006', 'C006', 006, 2, '2023-06-18'),
('S007', 'P007', 'C007', 007, 1, '2023-07-22'),
('S008', 'P008', 'C008', 008, 1, '2023-08-30'),
('S009', 'P009', 'C009', 009, 2, '2023-09-15'),
('S010', 'P010', 'C010', 010, 5, '2023-10-10'),
('S011', 'P011', 'C011', 011, 1, '2023-11-05'),
('S012', 'P012', 'C012', 012, 2, '2023-12-20'),
('S013', 'P013', 'C001', 001, 1, '2024-01-10'),
('S014', 'P014', 'C002', 002, 1, '2024-02-14'),
('S015', 'P015', 'C003', 003, 1, '2024-03-18'),
('S016', 'P001', 'C004', 004, 2, '2024-04-22'),
('S017', 'P002', 'C005', 005, 1, '2024-05-30'),
('S018', 'P003', 'C006', 006, 1, '2024-06-15'),
('S019', 'P004', 'C007', 007, 1, '2024-07-20'),
('S020', 'P005', 'C008', 008, 3, '2024-08-25')

-- display record from each table

SELECT * FROM Employees;
SELECT * FROM Products;
SELECT * FROM Customers;
SELECT * FROM Sales;

-- display specific columns from each table
SELECT ProductName, Price FROM Products;

-- display unique product categories
SELECT DISTINCT Category FROM Products;

-- To perform data filtering
-- products with price greater than 50
SELECT ProductName, Price FROM Products
WHERE Price > 50;

-- employees in the Sales department
SELECT EmployeeName, Department FROM Employees
WHERE Department = 'Sales';

-- sales that occured within 15th January 2023 and 30th June 2023
SELECT SaleID, SaleDate FROM Sales
WHERE SaleDate BETWEEN '2023-01-15' AND '2023-06-30';

-- using the sorting technique 
-- sort products by price in descending order
SELECT ProductID, ProductName, Price FROM Products
ORDER BY Price DESC;

-- sort customers by age in ascending order
SELECT CustomerID, CustomerName, Age FROM Customers
ORDER BY Age ASC;

-- to perform aggregation task to get total number of sale
SELECT COUNT(*) AS TotalSales FROM Sales;

-- to get the average price of products
SELECT AVG(Price) AS AveragePrice FROM Products;

-- using the GROUP BY clause.
-- no of sales handled by each employee

SELECT EmployeeID,SUM(Quantity) AS TotalSales FROM Sales
GROUP BY EmployeeID;

--average sales per department
SELECT e.Department, AVG(s.Quantity) AS AverageSales
FROM Sales s
JOIN Employees e
	 ON s.EmployeeID = e.EmployeeID
GROUP BY e.Department;

-- total quantity of products sold per category
SELECT p.Category, SUM(s.Quantity) AS TotalQuantity
FROM Sales s
INNER JOIN Products p
	 ON s.ProductID = p.ProductID
GROUP BY p.Category;

-- ASSIGNMENT 4
-- Using Joins

--To display each product along with the total quantity sold
SELECT p.ProductName, SUM(s.Quantity) AS TotalQuantitySold
FROM Sales s
INNER JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName;


--To display each employee along with the number of sales they have handled
SELECT e.EmployeeName, COUNT(s.SaleID) AS NumberOfSales
FROM Sales s
INNER JOIN Employees e ON s.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeName;


--To display customers alongside the total number of transactions they have made.
SELECT c.CustomerName, COUNT(s.SaleID) AS TotalTransactions
FROM Sales s
INNER JOIN Customers c ON s.CustomerID = c.CustomerID
GROUP BY c.CustomerName;


-- Using Subqueries
-- To Retrieve products whose price is above the average product price

SELECT AVG(Price) AS AveragePrice 
FROM Products                                       --This displays the average product price

SELECT ProductID, ProductName, Price
FROM Products WHERE Price > (SELECT AVG(Price)FROM Products);     --This retrieve products whose price is above the average


--To Identify employees whose salary is above the average salary

SELECT AVG(Salary)FROM Employees     --This shows the average salary only

SELECT EmployeeID, EmployeeName, Salary
FROM Employees WHERE Salary > (SELECT AVG(Salary)FROM Employees); --This identify employeees whose salary is above the displayed avg salary


-- Retrieve the product(s) with the highest price

SELECT MAX(Price)FROM Products  --for clarity, this shows the product with maximum price

SELECT ProductID, ProductName, Price
FROM Products WHERE Price = (SELECT MAX(Price)FROM Products);   -- This shows the product own the max price


-- Identify customers who have made purchases with quantities greater than the average quantity per transaction. 

SELECT AVG(Quantity) AS AvgQuantity FROM Sales     -- This shows the average quantity 

SELECT DISTINCT c.CustomerID, c.CustomerName, s.Quantity
FROM Sales s
INNER JOIN Customers c ON s.CustomerID = c.CustomerID
WHERE s.Quantity > (SELECT AVG(Quantity)FROM Sales);      -- This shows the customers who made purchase with quantities greater than the avg quantity


-- using CTE

-- CTE that lists total quantity sold per product and use it to retrieve products with the highest sales volume
WITH ProductSales AS (
    SELECT p.ProductID,p.ProductName,SUM(s.Quantity) AS TotalQuantitySold
    FROM Sales s
    INNER JOIN Products p ON s.ProductID = p.ProductID
    GROUP BY p.ProductID, p.ProductName
    )
SELECT ProductID,ProductName,TotalQuantitySold
FROM ProductSales 
WHERE TotalQuantitySold = (SELECT MAX(TotalQuantitySold) FROM ProductSales);


-- CTE that summarizes the number of sales handled by each employee and use it to identify the employee with the highest number of sales.
WITH EmployeeSales AS (
	SELECT e.EmployeeID, e.EmployeeName, COUNT(s.SaleID) AS NumberOfSales
	FROM Sales s
    INNER JOIN Employees e ON s.EmployeeID = e.EmployeeID
    GROUP BY e.EmployeeID, e.EmployeeName
)
SELECT EmployeeID, EmployeeName, NumberOfSales
FROM EmployeeSales WHERE NumberOfSales = (SELECT MAX(NumberOfSales) FROM EmployeeSales);


-- CTE that lists customers and their total transactions, and retrieve customers with more than three transactions.
WITH CustomerTransactions AS (
    SELECT c.CustomerID, c.CustomerName, COUNT(s.SaleID) AS TotalTransactions
    FROM Sales s
    INNER JOIN Customers c ON s.CustomerID = c.CustomerID
    GROUP BY c.CustomerID, c.CustomerName
)
SELECT CustomerID, CustomerName, TotalTransactions
FROM CustomerTransactions WHERE TotalTransactions > 3;

-- No result is displayed because none of the customers have transactions more than three 






