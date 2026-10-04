-- MONTHLY SALES TREND 
SELECT 
   DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
   SUM(Sales) AS Monthly_Sales
FROM orders_1
GROUP BY Month
ORDER BY Month;

-- SALES BY REGION
SELECT 
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM orders_1
GROUP BY Region
ORDER BY Total_Sales DESC;

-----------------------------
SELECT Region,Category
FROM orders_1;
-----------------------------
SELECT Region
FROM orders_1;
----------------------------

-- CATEGORY-WISE PERFORMANCE
SELECT 
    Category,
    SUM(Sales) AS Sales,
    SUM(Profit) AS Profit
FROM orders_1
GROUP BY Category
ORDER BY Sales DESC;

-- LOSS MAKING PRODUCTS
SELECT 
    Product_Name,
    SUM(Profit) AS Total_Loss
FROM orders_1
GROUP BY Product_Name
HAVING Total_Loss < 0
ORDER BY Total_Loss ASC;

-- Counting number of records in the 'orders_1' table
SELECT COUNT(*) AS total_records FROM orders_1;