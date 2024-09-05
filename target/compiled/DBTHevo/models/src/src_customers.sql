with raw_customers as(
select * from PC_HEVODATA_DB.public.raw_customers
)
select 
id::integer as customer_id,
first_name,
last_name
from raw_customers