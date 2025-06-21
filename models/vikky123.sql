 {{
    config( materialized='view' )
 }}

 select 
	 ID as cust_id
	,NAME as cust_name 
	,EMAIL as cust_email 
 from SALES_DB.RAW_SCHEMA.CUSTOMER