{% snapshot scd_raw_customers %}
{{ config(
    target_schema='CORE',
    strategy='check',
    unique_key='CUSTOMER_ID',
    check_cols=['FIRST_NAME', 'LAST_NAME']
) }}
select * from {{ ref('src_customers') }}
{% endsnapshot %}
