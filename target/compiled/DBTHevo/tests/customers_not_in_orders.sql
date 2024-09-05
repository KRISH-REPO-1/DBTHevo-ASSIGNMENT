select count(*) from PC_HEVODATA_DB.CORE.dim_customers where customer_id not in 
(select customer_id from PC_HEVODATA_DB.CORE.dim_orders )