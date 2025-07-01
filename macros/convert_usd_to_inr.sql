{% macro convert_usd_to_inr(column_name, exchange_rate) %}
     {{ column_name }} * {{ exchange_rate }}
{% endmacro %}


 