select count(*) from {{ref('dim_customers')}} where customer_id not in 
(select customer_id from {{ref('dim_orders')}} )