DROP DATABASE IF EXISTS Bamazon;
CREATE DATABASE Bamazon;

USE Bamazon;

CREATE TABLE Products (
ItemID int(5) AUTO_INCREMENT NOT NULL,
PRIMARY KEY(ItemId),
ProductName varchar(70) NOT NULL,
DepartmentName varchar(50) NOT NULL,
Price DECIMAL(4,2) NOT NULL,
StockQuantity int NOT NULL);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
12345,
'Guitar Hero Metallica - XBox 360(used)',
'Video Games',
26.00,
10);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
67891,
'Mens Zip-up Hoodie',
'Mens Clothing',
30.00,
25);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
23456,
'Dragon Ball Super: Super Saiyan Blue Vegeta Poster',
'Home',
5.00,
10);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
78912,
'Seagate 1TB Harddrive',
'Electronics',
75.00,
15);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
34567,
'Full-Metal Alchemist: Brotherhood Colonel Mustang Figurine',
'Toys',
35.00,
30);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
89123,
'LuLaRoe Leggings',
'Womens Clothing',
26.00,
34);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
45678,
'Mens Knit Beanie - Black: Legend of Zelda Logo',
'Mens Clothing',
22.00,
15);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
91234,
'Striped Jersey Cotton Sheets - Queen',
'Home',
50.00,
20);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
56789,
'Spiked Dog Leash',
'Pets',
26.00,
17);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
11234,
'Shark Kitty Bed',
'Pets',
60.00,
13);

USE Bamazon;
CREATE TABLE Departments(
DepartmentId int AUTO_INCREMENT,
PRIMARY KEY(DepartmentId),
DepartmentName varchar(50) NOT NULL,
OverHeadCosts DECIMAL(11,2) NOT NULL,
TotalSales DECIMAL(11,2) NOT NULL);


INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Mens Clothing',
10000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Pets',
10000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Home',
20000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Shoes',
15000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Electronics',
50000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Womens Clothing',
25000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Video Games',
20000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Toys',
20000,
0);


-- This creates the alias table TotalProfits that will exist only when requested by the executive
SHOW TABLES;
CREATE VIEW bamazon.TotalProfits AS SELECT DepartmentId, DepartmentName, OverHeadCosts, TotalSales, TotalSales-OverHeadCosts AS TotalProfit FROM Departments;
