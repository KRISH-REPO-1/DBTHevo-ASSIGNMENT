select customer_id,first_name,last_name from {{ref('dim_customers')}}
minus 
select id::integer,first_name,last_name from {{ source('PC_HEVODATA_DB', 'customers') }}
