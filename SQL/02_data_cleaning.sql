-- CHECK NULL VALUES
SELECT * FROM orders_1
WHERE Sales IS NULL or Profit IS NULL;

-- MySQL's safe update mode
SET sql_safe_updates = 0;

-- Remove duplicates
DELETE FROM orders_1
WHERE Row_ID NOT IN (
    SELECT * FROM (
        SELECT MIN(Row_ID)
        FROM orders_1
        GROUP BY Order_ID, Product_ID
    ) AS temp
);

SET sql_safe_updates = 1;

SELECT * FROM orders_1
LIMIT 10;

-- Fix negative profits (optional check)
SELECT * FROM orders_1
WHERE Profit < 0;
