{{ 'Welcome to dbt cloud' }}

{# comment #}

{# 
multi
line
comment
#}

{% set var1 = 'Hello World without -' %}
{{ var1 }}
{%set var2 = 'Hello World with ' -%}
{{ var2 }}

{% set var3 = ['Hello World', 'welcome to dbt, World!'] -%}
{{ var3 }}
{{ var3[1] }}

{% set var3 = ['Hello World_1', 'Hello World_2','Hello World_3'] %}

{% for item in var3 %}
  {{ item }}
{% endfor %}

 

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