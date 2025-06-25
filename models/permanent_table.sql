{{
    config(
        materialized='table', transient=false
    )
        

}}

select * from {{ source('raw_src', 'RAW_CUSTOMERS') }}