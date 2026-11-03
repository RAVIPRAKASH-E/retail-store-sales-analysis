SELECT
    SUM(Quantity * Unit_Price_INR) / COUNT(*) AS Average_Order_Value
FROM retail_sales_project.retail_sales_analysis;
SELECT
    Region,
    SUM(Quantity * Unit_Price_INR) AS Total_Revenue
FROM retail_sales_project.retail_sales_analysis
GROUP BY Region
ORDER BY Total_Revenue DESC;
SELECT
    Category,
    SUM(Quantity * Unit_Price_INR) AS Total_Revenue
FROM retail_sales_project.retail_sales_analysis
GROUP BY Category
ORDER BY Total_Revenue DESC;
SELECT
    Product,
    SUM(Quantity) AS Total_Quantity,
    SUM(Quantity * Unit_Price_INR) AS Total_Revenue
FROM retail_sales_project.retail_sales_analysis
GROUP BY Product
ORDER BY Total_Revenue DESC
LIMIT 10;
SELECT
    DATE_FORMAT(Order_Date, '%Y-%m') AS Sales_Month,
    SUM(Quantity * Unit_Price_INR) AS Monthly_Revenue
FROM retail_sales_project.retail_sales_analysis
GROUP BY DATE_FORMAT(Order_Date, '%Y-%m')
ORDER BY Sales_Month;
SELECT
    Payment_Mode,
    SUM(Quantity * Unit_Price_INR) AS Total_Revenue
FROM retail_sales_project.retail_sales_analysis
GROUP BY Payment_Mode
ORDER BY Total_Revenue DESC;
SELECT
    Sales_Channel,
    SUM(Quantity * Unit_Price_INR) AS Total_Revenue
FROM retail_sales_project.retail_sales_analysis
GROUP BY Sales_Channel
ORDER BY Total_Revenue DESC;
SELECT
    Order_ID,
    Order_Date,
    Product,
    Quantity,
    (Quantity * Unit_Price_INR) AS Order_Revenue
FROM retail_sales_project.retail_sales_analysis
WHERE (Quantity * Unit_Price_INR) > 5000
ORDER BY Order_Revenue DESC;
SELECT
    Product,
    Quantity,
    (Quantity * (Unit_Price_INR - Unit_Cost_INR)) AS Profit
FROM retail_sales_project.retail_sales_analysis
ORDER BY Profit DESC
LIMIT 10;
SELECT
    Region,
    SUM(Quantity * (Unit_Price_INR - Unit_Cost_INR)) AS Total_Profit
FROM retail_sales_project.retail_sales_analysis
GROUP BY Region
ORDER BY Total_Profit DESC;