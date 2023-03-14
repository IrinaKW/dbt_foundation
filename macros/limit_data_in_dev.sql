{% macro limit_data_in_dev(column, number_of_dev_days) %}
{% if target.name == 'default' %}
where {{column}} >= dateadd('day', -{{number_of_dev_days}}, current_timestamp)
{% endif %}
{% endmacro%}
