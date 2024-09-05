select * from {{ ref('dim_orders') }} where order_id not in 
(select order_id from {{ ref('fct_payments') }} )