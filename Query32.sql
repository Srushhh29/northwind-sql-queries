/* Find the employees who have not processed any orders */

SELECT Employees.Employee_ID, Employees.First_Name, Employees.Last_Name
FROM Employees
LEFT JOIN Orders ON Employees.Employee_ID = Orders.Employee_ID
WHERE Orders.Employee_ID IS NULL;
