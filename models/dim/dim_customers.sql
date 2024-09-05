with customer_snapshot as (
select *
from {{ ref('scd_raw_customers') }} where dbt_valid_to is null
)
select customer_id,
first_name,
last_name,
DBT_valid_from as INSERT_DATE
 from customer_snapshot