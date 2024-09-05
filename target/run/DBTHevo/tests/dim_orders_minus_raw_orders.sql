select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select ORDER_ID, CUSTOMER_ID, ORDER_DATE, ORDER_STATUS from PC_HEVODATA_DB.CORE.dim_orders
minus
select id::integer, user_id::integer, ORDER_DATE::DATE, STATUS from  PC_HEVODATA_DB.public.raw_orders
      
    ) dbt_internal_test