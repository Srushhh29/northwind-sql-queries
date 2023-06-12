/* Classify customers based on their total order amounts such that total order amounts > 5000 should be classified as ‘High Value’, if > 1000 then as ‘Medium Value’ and otherwise as ‘Low Value’ */

SELECT Customers.Customer_ID, Customers.Company_Name, 
    SUM(Order_Details.Quantity * Order_Details.Unit_Price) AS TotalOrderAmount,
    CASE 
        WHEN SUM(Order_Details.Quantity * Order_Details.Unit_Price) > 5000 THEN 'High Value'
        WHEN SUM(Order_Details.Quantity * Order_Details.Unit_Price) > 1000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS CustomerClass
FROM Customers
JOIN Orders ON Customers.Customer_ID = Orders.Customer_ID
JOIN Order_Details ON Orders.Order_ID = Order_Details.Order_ID
GROUP BY Customers.Customer_ID, Customers.Company_Name
ORDER BY TotalOrderAmount DESC;