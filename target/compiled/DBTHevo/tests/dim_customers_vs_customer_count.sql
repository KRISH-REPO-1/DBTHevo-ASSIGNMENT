select count(*) from PC_HEVODATA_DB.CORE.dim_customers
minus
select count(*) from PC_HEVODATA_DB.CORE.customers