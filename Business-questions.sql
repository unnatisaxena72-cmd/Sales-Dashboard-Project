SELECT "Sub-Category", SUM(Sales) AS Total_Sales
FROM orders
GROUP BY "Sub-Category"
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT Region, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;


SELECT Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit,
       ROUND(SUM(Profit) * 100.0 / SUM(Sales), 2) AS Profit_Margin_Pct
FROM orders
GROUP BY Category
ORDER BY Total_Sales DESC;


SELECT "Sub-Category", SUM(Profit) AS Total_Profit
FROM orders
GROUP BY "Sub-Category"
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC;

SELECT Segment, SUM(Sales) AS Total_Sales, SUM(Quantity) AS Total_Units
FROM orders
GROUP BY Segment
ORDER BY Total_Sales DESC;

SELECT State, SUM(Sales) AS Total_Sales
FROM orders
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;


SELECT City, SUM(Sales) AS Total_Sales
FROM orders
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;


SELECT 
  CASE 
    WHEN Discount = 0 THEN 'No Discount'
    WHEN Discount <= 0.2 THEN 'Low Discount (0-20%)'
    WHEN Discount <= 0.5 THEN 'Medium Discount (20-50%)'
    ELSE 'High Discount (50%+)'
  END AS Discount_Bracket,
  SUM(Sales) AS Total_Sales,
  SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Discount_Bracket
ORDER BY Total_Profit DESC;


SELECT "Ship Mode", COUNT(*) AS Order_Count, SUM(Sales) AS Total_Sales
FROM orders
GROUP BY "Ship Mode"
ORDER BY Total_Sales DESC;