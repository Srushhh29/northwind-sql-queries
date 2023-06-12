/* To Find the total sales (Quantity*Unit_Price) for each category of products */

SELECT category_id,quantity_per_unit*unit_Price AS Totalsales 
FROM products
GROUP BY category_id;