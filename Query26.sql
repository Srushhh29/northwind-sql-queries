/* Find the customer who has ordered the most ‘Chai’ product */

SELECT Customers.Customer_ID, Customers.Company_Name, SUM(Order_Details.Quantity) AS TotalQuantity
FROM Customers
JOIN Orders ON Customers.Customer_ID = Orders.Customer_ID
JOIN Order_Details ON Orders.Order_ID = Order_Details.Order_ID
JOIN Products ON Order_Details.Product_ID = Products.Product_ID
WHERE Products.Product_Name = 'Chai'
GROUP BY Customers.Customer_ID, Customers.Company_Name
ORDER BY TotalQuantity DESC
limit 1;
