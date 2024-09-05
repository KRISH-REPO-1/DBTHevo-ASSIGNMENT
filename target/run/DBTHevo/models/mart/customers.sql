
  
    

        create or replace transient table PC_HEVODATA_DB.CORE.customers
         as
        (WITH payments AS (
    SELECT order_id,payment_method,amount FROM PC_HEVODATA_DB.CORE.fct_payments
),
customers AS (
    SELECT customer_id,first_name,last_name FROM PC_HEVODATA_DB.CORE.dim_customers
),
orders AS (
    SELECT order_id,customer_id,order_date,order_status FROM PC_HEVODATA_DB.CORE.dim_orders
)
SELECT
c.customer_id,
c.first_name,
c.last_name,
min(o.order_date) as first_order,
max(o.order_date) as most_recent_order,
count(distinct o.order_id) number_of_orders,
sum(case when
         o.order_status in ('completed','placed','shipped')
         then p.amount::float
         else 0 end )::float as customer_life_time_value,
FROM
  customers c
  LEFT JOIN orders o
  on c.customer_id=o.customer_id
  LEFT JOIN payments p
  on o.order_id=p.order_id
GROUP BY c.customer_id,
c.first_name,
c.last_name
        );
      
  