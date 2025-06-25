select
    o.order_date,
    p.product_name,
    p.category,
    p.vendor,
    u.city,
    u.state,
    u.sales_channel,
    sum(o.order_amount) as total_revenue
from {{ ref('int_orders_enriched') }} o 
left join {{ ref('int_products_cleaned') }} p 
on o.product_id = p.id
left join {{ ref('int_users_cleaned') }} u 
on o.user_id = u.id
group by all