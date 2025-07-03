with joined as (
    select
        c.customer_id,
        o.id as order_id,
        o.created_at as order_date
    from {{ ref('stg_customers') }} c
    join {{ ref('stg_orders') }} o on c.customer_id = o.user_id
)
select  *, 
{{ dbt_utils.generate_surrogate_key(['customer_id', 'order_id']) }} as surrogate_id
from joined