/* Find the employee who processed the most orders in August 2016 */

SELECT Employees.Employee_ID, Employees.First_Name, Employees.Last_Name, COUNT(Orders.Order_ID) AS OrderCount
FROM Employees
JOIN Orders ON Employees.Employee_ID = Orders.Employee_ID
WHERE MONTH(Orders.Order_Date) = 8 AND YEAR(Orders.Order_Date) = 2016
GROUP BY Employees.Employee_ID, Employees.First_Name, Employees.Last_Name
ORDER BY OrderCount DESC
LIMIT 1;
