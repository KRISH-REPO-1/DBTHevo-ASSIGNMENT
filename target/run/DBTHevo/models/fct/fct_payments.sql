-- back compat for old kwarg name
  
  begin;
    

        insert into PC_HEVODATA_DB.CORE.fct_payments ("PAYMENT_ID", "ORDER_ID", "PAYMENT_METHOD", "AMOUNT")
        (
            select "PAYMENT_ID", "ORDER_ID", "PAYMENT_METHOD", "AMOUNT"
            from PC_HEVODATA_DB.CORE.fct_payments__dbt_tmp
        );
    commit;