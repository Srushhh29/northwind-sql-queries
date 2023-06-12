/* To find the most expensive product in each category */

SELECT product_id,category_name,product_name, MAX(unit_price)
FROM products 
INNER JOIN categories 
ON products.category_id= categories.category_id
GROUP BY category_name;
