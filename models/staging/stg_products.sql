select *
from {{ source('raw_src', 'raw_products') }}