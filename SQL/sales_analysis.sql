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
-- Sales by Region
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;
-- Profit by Category
SELECT
    Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;
-- Top 10 Customers
SELECT
    Customer_Name,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;
-- Top 10 Products
SELECT
    Product_Name,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;
-- Sales by Year
SELECT
    YEAR(Order_Date) AS Year,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY YEAR(Order_Date)
ORDER BY Year;
