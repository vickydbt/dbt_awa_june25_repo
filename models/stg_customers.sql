{{ config(materialized='view') }}
SELECT
    id AS customer_id,
    upper(email) AS email,
    created_at
from {{ source('raw_src', 'raw_customers') }}