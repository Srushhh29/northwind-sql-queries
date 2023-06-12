/* Classify employees based on the number of orders they have processed such that NumberOfOrders > 100 Then PerformanceCategory as ‘High Performing’. If NumberOfOrders>50 Then ‘Medium Performing’ and else ‘Lower Performing’ */

SELECT Employees.Employee_ID, Employees.First_Name, Employees.Last_Name,
    COUNT(Orders.Order_ID) AS NumberOfOrders,
    CASE
        WHEN COUNT(Orders.Order_ID) > 100 THEN 'High Performing'
        WHEN COUNT(Orders.Order_ID) > 50 THEN 'Medium Performing'
        ELSE 'Lower Performing'
    END AS PerformanceCategory
FROM Employees
LEFT JOIN Orders ON Employees.Employee_ID = Orders.Employee_ID
GROUP BY Employees.Employee_ID, Employees.First_Name, Employees.Last_Name
ORDER BY NumberOfOrders DESC;