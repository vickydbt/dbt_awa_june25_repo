 select 
  {{ dbt_utils.star(
      from=ref('stg_payment'), 
      except=['PAYMENT_METHOD', 'AMOUNT_USD'],
      relation_alias='o'
  ) }}
from {{ ref('stg_payment') }} as o
