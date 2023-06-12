/* Get the total number of orders placed by each customer */

SELECT customer_id, Count(Orders.order_id) AS TotalOrders
FROM [Orders]
Where customer_id=customer_id
GROUP BY customer_id
Order BY Count(Orders.order_id) DESC;