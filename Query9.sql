--To Find the customers who have not placed any orders

select customer_id
from orders 
inner join  order_details 
on orders.order_id = order_details.order_id
inner join products
on order_details.product_id=products.product_id
where units_on_order=0 and reorder_level=0
group by customer_id;
