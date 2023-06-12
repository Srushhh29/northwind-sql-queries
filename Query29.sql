/* Find the month in the year 2016 with the highest total sales */

SELECT ( Orders.Order_Date) AS Month, SUM(Order_Details.Quantity * Order_Details.Unit_Price) AS TotalSales
FROM Orders
JOIN Order_Details ON Orders.Order_ID = Order_Details.Order_ID
WHERE YEAR(Orders.Order_Date) = 2016
GROUP BY (Orders.Order_Date)
ORDER BY TotalSales DESC
LIMIT 1;
