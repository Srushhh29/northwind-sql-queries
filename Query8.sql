--Find the products that have never been ordered 

SELECT product_id, product_name
FROM products 
WHERE units_on_order=0 and reorder_level=0;

