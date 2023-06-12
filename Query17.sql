/* To List all the distinct countries to which orders have been shipped */

SELECT ship_country
FROM orders
GROUP BY ship_country;
