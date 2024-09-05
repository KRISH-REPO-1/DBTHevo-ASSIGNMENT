select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select count(*) from PC_HEVODATA_DB.CORE.dim_customers
minus
select count(*) from PC_HEVODATA_DB.CORE.customers
      
    ) dbt_internal_test