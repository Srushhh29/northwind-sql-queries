/* Find the order with the highest total cost */

SELECT order_id, MAX(unit_price*quantity) AS HighestTotalCost FROM order_details ;
