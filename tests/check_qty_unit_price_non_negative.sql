SELECT
*
FROM
{{ source('raw_src','raw_orders') }}
WHERE unit_price < 0 and quantity < 0   --pass case 

--WHERE unit_price <= 0 or quantity <= 0  fail case