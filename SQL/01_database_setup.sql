-- Creating a DataBase of name 'SUPERSTORE_DB'
CREATE DATABASE superstore_db;

-- Using the particular database
USE superstore_db;

-- Creating a Table naming 'orders_1'
CREATE TABLE IF NOT EXISTS orders_1 (
        Row_ID INT PRIMARY KEY,
        Order_ID VARCHAR(20),
        Order_Date DATE,
        Ship_Date DATE,
        Ship_Mode VARCHAR(50),
        Customer_ID VARCHAR(20),
        Customer_Name VARCHAR(100),
        Segment VARCHAR(50),
        Country VARCHAR(50),
        City VARCHAR(50),
        State VARCHAR(50),
        Postal_Code VARCHAR(20),
        Region VARCHAR(50),
        Product_ID VARCHAR(20),
        Category VARCHAR(50),
        Sub_Category VARCHAR(50),
        Product_Name VARCHAR(255),
        Sales DECIMAL(10,2),
        Quantity INT,
        Discount DECIMAL(5,2),
        Profit DECIMAL(10,2)
);

TRUNCATE TABLE orders_1;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/superstore.csv'
INTO TABLE orders_1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Row_ID, Order_ID, @Order_Date, @Ship_Date, Ship_Mode, Customer_ID, Customer_Name,
 Segment, Country, City, State, Postal_Code, Region, Product_ID, Category,
 Sub_Category, Product_Name, Sales, Quantity, Discount, Profit)
 SET
    Order_Date = STR_TO_DATE(@Order_Date, '%m/%d/%y'),
    Ship_Date = STR_TO_DATE(@Ship_Date, '%m/%d/%y');
    
   
   
SELECT * FROM orders_1;


DROP TABLE orders_1;