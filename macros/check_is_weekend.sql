{% macro check_is_weekend(dt_column) %}
--EXTRACT(DAYOFWEEK FROM {{ dt_column }}) IN (1, 7) 
case when extract(dayofweek from to_date({{ dt_column }})) in (1, 7)
         then 'Weekend'
         else 'Weekday'
    end as day_type

{% endmacro %}