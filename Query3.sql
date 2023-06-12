/* Get the total quantity of each product sold */

SELECT product_id,Count(order_details.quantity) AS Totalproductsold 
from order_details
Where product_id=product_id
GROUP BY product_id
Order BY count(order_details.quantity);