/* Find the employees who have processed more than 100 orders */

SELECT employee_id,COUNT(order_id)>100 as More_Than_100 FROM orders;
