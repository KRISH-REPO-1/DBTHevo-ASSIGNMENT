select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select * from PC_HEVODATA_DB.CORE.dim_orders where order_id not in 
(select order_id from PC_HEVODATA_DB.CORE.fct_payments )
      
    ) dbt_internal_test