select 
     order_id  
    ,customer_id  
    ,payment_method  
    ,amount_usd  
    ,{{ convert_usd_to_inr('amount_usd', 83.50) }} as amount_inr
    ,payment_date 
 from {{ source('raw_src', 'raw_payments') }}