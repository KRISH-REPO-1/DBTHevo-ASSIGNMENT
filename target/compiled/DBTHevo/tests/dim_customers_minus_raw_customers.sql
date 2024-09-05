select customer_id,first_name,last_name from PC_HEVODATA_DB.CORE.dim_customers
minus 
select id::integer,first_name,last_name from PC_HEVODATA_DB.public.raw_customers