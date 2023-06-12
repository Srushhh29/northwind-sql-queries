/*Classify products based on their sales volume such that TotalQuantity > 1000 Then SalesCategory as ‘High Sales’. If TotalQuantity>500 Then ‘Medium Sales’ and else ‘Lower Sales’ */

SELECT Products.Product_ID, Products.Product_Name, 
    SUM(Order_Details.Quantity) AS TotalQuantity,
    CASE 
        WHEN SUM(Order_Details.Quantity) > 1000 THEN 'High Sales'
        WHEN SUM(Order_Details.Quantity) > 500 THEN 'Medium Sales'
        ELSE 'Lower Sales'
    END AS SalesCategory
FROM Products
JOIN Order_Details ON Products.Product_ID = Order_Details.Product_ID
GROUP BY Products.Product_ID, Products.Product_Name
ORDER BY TotalQuantity DESC;


