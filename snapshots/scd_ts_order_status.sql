{% snapshot scd_ts_order_status %}
    {{
        config(
            target_schema='mart',
            unique_key='order_id',
            strategy='timestamp',
            updated_at='updated_at'
        )
    }}
    select * from {{ ref('stg_orders_status') }}
{% endsnapshot %}
