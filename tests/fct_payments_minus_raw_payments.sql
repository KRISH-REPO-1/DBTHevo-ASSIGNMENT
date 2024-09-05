select PAYMENT_ID, ORDER_ID, PAYMENT_METHOD, AMOUNT from {{ref('fct_payments')}}
minus
select ID::integer, ORDER_ID::integer, PAYMENT_METHOD, AMOUNT::float from  {{ source('PC_HEVODATA_DB', 'payments') }}