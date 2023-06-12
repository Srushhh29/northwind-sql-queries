/* Find the customers who have spent more than $5000 in total */

SELECT contact_name as customers, SUM(unit_price)>5000 as Total
FROM  customers
INNER JOIN orders
ON customers.customer_id= orders.customer_id
INNER JOIN order_details
ON orders.order_id= order_details.order_id
GROUP BY contact_name;
