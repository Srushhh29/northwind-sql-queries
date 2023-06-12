/* To Get the top 5 most sold products */

SELECT product_id, quantity
FROM order_details ORDER BY  quantity DESC
LIMIT 5;
