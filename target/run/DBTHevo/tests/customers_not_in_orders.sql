select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select count(*) from PC_HEVODATA_DB.CORE.dim_customers where customer_id not in 
(select customer_id from PC_HEVODATA_DB.CORE.dim_orders )
      
    ) dbt_internal_test