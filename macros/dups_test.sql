{% test dups_test(model,column_name) %}
    SELECT * FROM {{model}}
QUALIFY ROW_NUMBER() OVER (PARTITION BY {{column_name}} ORDER BY {{column_name}})>1
{% endtest %}