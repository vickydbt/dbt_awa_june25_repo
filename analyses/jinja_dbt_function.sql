{# get list of columns from table #}
{% set columns = adapter.get_columns_in_relation(ref('stg_customers'))%}
{{columns}}
{% for col in columns -%}
{{col}}
{% endfor %}


 