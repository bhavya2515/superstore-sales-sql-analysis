-- ADVANCED INSIGHTS
-- TOP 10 CUSTOMERS
SELECT 
    Customer_Name,
    SUM(Sales) AS Total_Spent
FROM orders_1
GROUP BY Customer_Name
ORDER BY Total_Spent DESC
LIMIT 10;   

-- TOP SELLING PRODUCTS
SELECT 
    Product_Name,
    SUM(Quantity) AS Total_Quantity
FROM orders_1
GROUP BY Product_Name
ORDER BY Total_Quantity DESC
LIMIT 10;

-- PROFIT RATIO BY CATEGORY
SELECT 
    Category,
    ROUND(SUM(Profit)/SUM(Sales) * 100,2) AS Profit_Percentage
FROM orders_1
GROUP BY Category;

-- SHIPPING MODE ANALYSIS
SELECT 
    Ship_Mode,
    COUNT(Order_ID) AS Total_Orders,
    SUM(Profit) AS Profit
FROM orders_1
GROUP BY Ship_Mode;

-- TOP CITIES BY SALES
SELECT 
    City,
    SUM(Sales) AS Total_Sales
FROM orders_1
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;  

