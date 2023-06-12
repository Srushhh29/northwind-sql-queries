/* List the top 5 employees who have processed the most orders */

SELECT first_name,last_name,COUNT(*) as totalorders
FROM employees 
INNER JOIN orders
ON employees.employee_id= orders.employee_id
GROUP BY first_name,last_name
ORDER BY totalorders desc
LIMIT 5;
