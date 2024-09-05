{{
  config(
    materialized = 'incremental',
    on_schema_change='fail'
    )
}}
with src_payments AS (
    select * from {{ref('src_payments')}}
)
select * from src_payments
{% if is_incremental() %}
 WHERE PAYMENT_ID not in (select PAYMENT_ID from {{ this }})
{% endif %}