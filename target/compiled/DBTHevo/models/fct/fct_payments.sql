
with  __dbt__cte__src_payments as (
with raw_payments as(
select * from PC_HEVODATA_DB.public.raw_payments
)
select 
id::integer as payment_id,
order_id::integer as ORDER_ID,
payment_method,
amount::float as amount
from raw_payments
), src_payments AS (
    select * from __dbt__cte__src_payments
)
select * from src_payments

 WHERE PAYMENT_ID not in (select PAYMENT_ID from PC_HEVODATA_DB.CORE.fct_payments)
