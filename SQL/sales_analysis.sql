-- Executive Sales Analytics Dashboard
-- Author: Adam Muhammad Albasu

-- 1. View all records
SELECT * FROM superstore;

-- 2. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM superstore;

-- 3. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM superstore;

-- 4. Total Orders
SELECT COUNT(*) AS Total_Orders
FROM superstore;

-- 5. Average Sales
SELECT ROUND(AVG(Sales), 2) AS Average_Sales
FROM superstore;
