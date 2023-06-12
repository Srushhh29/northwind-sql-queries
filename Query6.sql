/* Get the customers who have placed more than 10 orders */

SELECT orders.customer_id, order_details.quantity
FROM orders
inner JOIN order_details 
ON orders.order_id = order_details.order_id
where quantity>10
group by customer_id ;