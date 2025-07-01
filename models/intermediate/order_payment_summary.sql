
select 
     order_id  
    ,{{generate_payment_amt_col('payment_method','amount_usd')}}
 from {{ source('raw_src', 'raw_payments') }}
 group by 1