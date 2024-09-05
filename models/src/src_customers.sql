with raw_customers as(
select * from {{ source('PC_HEVODATA_DB', 'customers') }}
)
select 
id::integer as customer_id,
first_name,
last_name
from raw_customers