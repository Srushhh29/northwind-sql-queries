/* Get the list of customers who have ordered ‘Chai’ product */ 

SELECT customer_id
FROM orders
INNER JOIN order_details
ON orders.order_id= order_details.order_id
INNER JOIN products
ON order_details.product_id=products.product_id
WHERE product_name='Chai'
GROUP BY customer_id;
