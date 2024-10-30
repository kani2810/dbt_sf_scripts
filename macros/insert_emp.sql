{% macro insert_emp(args) %}
    {% set ins_qr %}
    insert into emp values (3,'XYZ')
    {% endset %}

    {% do run_query(ins_qr) %}
{% endmacro %}
