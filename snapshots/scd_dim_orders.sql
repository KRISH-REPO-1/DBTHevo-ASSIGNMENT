{% snapshot scd_raw_orders %}
{{ config(
    target_schema='CORE',
    strategy='check',
    unique_key='order_id',
    check_cols=['customer_id', 'order_date','order_status']
) }}
select * from {{ ref('src_orders') }}
{% endsnapshot %}