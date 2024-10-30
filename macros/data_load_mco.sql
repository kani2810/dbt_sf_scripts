{% macro data_load_mco(tgt_table,stg_name,force_option,error_option) %}
    {% set load_sql %}
    COPY INTO {{tgt_table}}
    FROM @{{stg_name}}
    FORCE = {{force_option}}
    ON_ERROR = {{error_option}}
    {% endset %}

    {% do run_query(load_sql) %}
{% endmacro %}


