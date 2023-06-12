--Find the total sales for each year


SELECT YEAR(Orders.Order_Date) AS OrderYear, SUM(Order_Details.Quantity * Order_Details.Unit_Price) AS TotalSales
FROM Orders
JOIN Order_Details ON Orders.Order_ID = Order_Details.Order_ID
GROUP BY OrderYear
ORDER BY OrderYear;
 