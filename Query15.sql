--To find the total revenue for the year 2016 

SELECT SUM(unit_price)
FROM order_details
INNER JOIN orders
ON order_details.order_id= orders.order_id
WHERE shipped_date<='2016-12-31';
