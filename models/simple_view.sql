{{
    config(
        materialized='view'
    )
}}
select * from {{ source('raw_src', 'raw_customers') }}