/* Find all suppliers who provide products in the ‘Seafood’ category */

select supplier_id 
from products 
where category_id is 8
GROUP BY supplier_id;
