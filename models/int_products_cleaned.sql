select
    id,
    created_at,
    title as product_name,
    category,
    vendor,
    price
from {{ ref('stg_products') }}