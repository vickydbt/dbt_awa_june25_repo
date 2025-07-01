{% macro generate_payment_amt_col(payment_type, amt) %}
  {% set payment_mode = ['online', 'credit_card', 'cash'] %}

  {% for mode in payment_mode %}
    SUM(CASE WHEN {{ payment_type }} = '{{ mode }}' THEN {{ amt }} END) AS {{ mode}}_amount
    {%- if not loop.last %},{% endif %}
  {% endfor %}
  ,SUM({{ amt }}) AS total_amount
{% endmacro %}
