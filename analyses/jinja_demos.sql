{# comment will not appear in the compiled SQL -#}
--comment will  appear in the compiled SQL

{# 
multi
line
comment
#}
--------------------------------------------------------
{% set var1 = 'Hello' %}
{{ var1 }}  -- print the value of variable
--------------------------------------------------------
{% set my_fruits = ["apple", "banana", "cherry"] -%}
{{ my_fruits }}
{{ my_fruits[1] }}
--------------------------------------------------------
--print using loop
{% set my_fruits = ["apple", "banana", "cherry"] %}
select 
{% for item in my_fruits %}
  {{ item }} {% if not loop.last %},{% endif %}
{%- endfor %}
--------------------------------------------------------
 

{# ------if else end if conditon------  #}
{%- set temperature = 30 -%}

{%- if temperature > -10 -%}
{{ 'It is hot' }}
{%- elif temperature < 0 -%}
{{ 'It is freezing' }}
{%- else -%}
{{ 'It is not hot' }}
{%- endif -%}



{# ------for loop-----  #}
{%- set col_lst = ['id', 'quantity', 'unit_price'] -%}

SELECT 
{%- for col in colitem_lst %}
  {{ col }}
  {%- if not loop.last -%}
   ,
  {%- endif -%}
{%- endfor %}
FROM table