/* Find the suppliers who supply the top 5 most sold products */

SELECT Suppliers.Supplier_ID, Suppliers.Company_Name, COUNT(Order_Details.Product_ID) AS ProductCount
FROM Suppliers
JOIN Products ON Suppliers.Supplier_ID = Products.Supplier_ID
JOIN Order_Details ON Products.Product_ID = Order_Details.Product_ID
GROUP BY Suppliers.Supplier_ID, Suppliers.Company_Name
ORDER BY ProductCount DESC
LIMIT 5;
