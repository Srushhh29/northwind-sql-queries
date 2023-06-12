/* To List the employees and the number of orders each employee has taken */

SELECT employee_id, Count(Orders.order_id) AS TotalOrders
FROM [orders]
Where employee_id=employee_id
GROUP BY employee_id;