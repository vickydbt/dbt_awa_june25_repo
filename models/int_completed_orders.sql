{{ config(materialized='ephemeral') }}
select
    id as order_id,
    to_date(created_at) as order_date,
    user_id as customer_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price as order_amount
from {{ ref('stg_orders') }}
WHERE status = 'COMPLETED'