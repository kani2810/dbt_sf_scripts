{% test dups_check_rn(model,column_names) %}
    select * from {{model}}
    QUALIFY ROW_NUMBER() over (PARTITION by {{column_names | join (',')}} order by {{column_names | join (',')}} )>1
{% endtest %}



