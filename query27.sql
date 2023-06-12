/* Find the average quantity of products ordered in each order */

SELECT Orders.Order_ID, AVG(Order_Details.Quantity) AS AverageQuantity
FROM Orders
JOIN Order_Details ON Orders.Order_ID = Order_Details.Order_ID
GROUP BY Orders.Order_ID;
