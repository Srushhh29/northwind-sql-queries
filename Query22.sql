/* Get the employees who have processed orders for ‘Chai’ product */

SELECT employee_id,product_name
FROM orders
INNER JOIN order_details
ON orders.order_id= order_details.order_id
INNER JOIN products
ON order_details.product_id=products.product_id
WHERE product_name='Chai'
GROUP BY employee_id;
