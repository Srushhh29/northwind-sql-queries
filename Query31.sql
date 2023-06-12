/* Find the top 3 customers who have ordered the most products */

SELECT Customers.Customer_ID, Customers.Company_Name, COUNT(Order_Details.Product_ID) AS ProductCount
FROM Customers
JOIN Orders ON Customers.Customer_ID = Orders.Customer_ID
JOIN Order_Details ON Orders.Order_ID = Order_Details.Order_ID
GROUP BY Customers.Customer_ID, Customers.Company_Name
ORDER BY ProductCount DESC
LIMIT 3;
