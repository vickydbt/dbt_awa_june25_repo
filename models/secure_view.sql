{{
    config(
        materialized='view',secure=true

    )
}}

 select 
	 id as cust_id
	,name as cust_name 
	,email as cust_email 
	,region  
	,created_at  
	,updated_at  

 from sales_db.raw_schema.raw_customers