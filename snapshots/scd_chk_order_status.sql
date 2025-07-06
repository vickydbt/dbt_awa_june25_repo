{% snapshot scd_chk_order_status %}
    {{
        config(
           
		    target_schema='mart',
			unique_key='ORDER_ID',
            strategy='check',
            check_cols=['STATUS', 'CITY'],
            invalidate_hard_deletes=True
        )
    }}
    select * from {{ ref('stg_orders_status') }}
{% endsnapshot %}