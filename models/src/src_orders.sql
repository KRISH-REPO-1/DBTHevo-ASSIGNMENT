with raw_orders as(
select * from  {{ source('PC_HEVODATA_DB', 'orders') }}
)
select 
id::integer as order_id,
user_id::integer as customer_id,
order_date::date as order_date,
status as order_status
from raw_orders