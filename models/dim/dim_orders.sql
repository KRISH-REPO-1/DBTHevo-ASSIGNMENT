with orders_snapshot as (
select *
from {{ ref('scd_raw_orders') }} where dbt_valid_to is null
)
select ORDER_ID,
CUSTOMER_ID,
ORDER_DATE,
ORDER_STATUS,
DBT_valid_from as INSERT_DATE
from orders_snapshot