{% macro multiply_columns(col1,col2) -%}
{{col1}} *{{ col2}}
 
{%- endmacro -%}