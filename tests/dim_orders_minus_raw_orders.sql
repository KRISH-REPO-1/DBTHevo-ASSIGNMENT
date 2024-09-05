select ORDER_ID, CUSTOMER_ID, ORDER_DATE, ORDER_STATUS from {{ref('dim_orders')}}
minus
select id::integer, user_id::integer, ORDER_DATE::DATE, STATUS from  {{ source('PC_HEVODATA_DB', 'orders') }}
