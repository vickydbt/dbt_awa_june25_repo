{#  
{% macro concat_string(val1,val2)%}
concat('{{val1}}','{{val2}}')
{% endmacro%}
#}

{% macro concat_string(val1,val2)%}
concat( '{{val1}}'  ,'-' ,'{{val2}}')
{% endmacro%}

