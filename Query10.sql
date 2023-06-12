/* To List all ‘Orders’ with ‘Customer’ details and ‘Employee’ who processed it */

select employee_id,contact_name,address,city,region,postal_code,country,phone,fax
from customers 
inner join  orders 
on customers.customer_id= orders.customer_id
group by employee_id;

