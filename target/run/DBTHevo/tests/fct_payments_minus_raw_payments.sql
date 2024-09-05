select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select PAYMENT_ID, ORDER_ID, PAYMENT_METHOD, AMOUNT from PC_HEVODATA_DB.CORE.fct_payments
minus
select ID::integer, ORDER_ID::integer, PAYMENT_METHOD, AMOUNT::float from  PC_HEVODATA_DB.public.raw_payments
      
    ) dbt_internal_test