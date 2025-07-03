select id,
created_at,
{{check_is_weekend('created_at')}},
user_id,
product_id,
quantity,
unit_price,
status
from {{ ref('stg_orders') }}