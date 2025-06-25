{{
    config(
        materialized='view'
    )
}}
select * from {{ source('raw_src', 'RAW_CUSTOMERS') }}