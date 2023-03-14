{% macro cents_to_dollars(column, rounding=2)%}
round({{column}}/100, {{rounding}})
{% endmacro%}