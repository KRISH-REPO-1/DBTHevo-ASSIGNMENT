with source as (
      select * from PC_HEVODATA_DB.raw.raw_customers
),
renamed as (
    select
        "ID",
        "FIRST_NAME",
        "LAST_NAME"

    from source
)
select * from renamed