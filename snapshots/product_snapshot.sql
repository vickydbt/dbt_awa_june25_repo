{% snapshot products_snapshot %}

    {{
        config(
          target_schema='mart',
          strategy='timestamp',
          unique_key='id',
          updated_at='created_at',
        )
    }}

    select * from {{ source('raw_src', 'raw_products') }}

{% endsnapshot %}