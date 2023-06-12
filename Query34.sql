/* Find the customers who have ordered products from all categories */

SELECT Customers.Customer_ID, Customers.Company_Name
FROM Customers
WHERE Customers.Customer_ID IN (
    SELECT Orders.Customer_ID
    FROM Orders
    JOIN Order_Details ON Orders.Order_ID = Order_Details.Order_ID
    JOIN Products ON Order_Details.Product_ID = Products.Product_ID
    GROUP BY Orders.Customer_ID
    HAVING COUNT(DISTINCT Products.Category_ID) = (
        SELECT COUNT(DISTINCT Category_ID)
        FROM Categories
    )
);
