with raw_payments as(
select * from {{ source('PC_HEVODATA_DB', 'payments') }}
)
select 
id::integer as payment_id,
order_id::integer as ORDER_ID,
payment_method,
amount::float as amount
from raw_payments