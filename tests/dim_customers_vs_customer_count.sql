select count(*) from {{ref('dim_customers')}}
minus
select count(*) from {{ref('customers')}}