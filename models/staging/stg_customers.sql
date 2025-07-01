SELECT
    id AS customer_id,
    upper(email) AS email,
    region,
    created_at
from {{ source('raw_src', 'raw_customers') }}