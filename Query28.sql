/* Find the top 3 most popular categories of products ordered */

SELECT Categories.Category_Name, COUNT(*) AS OrderCount
FROM Categories
JOIN Products ON Categories.Category_ID = Products.Category_ID
JOIN Order_Details ON Products.Product_ID = Order_Details.Product_ID
GROUP BY Categories.Category_Name
ORDER BY OrderCount DESC
LIMIT 3
