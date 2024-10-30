{% macro data_unload_mco(file_name,file_type) %}
    {% set unload_qr %}
    COPY INTO @TEST_STG/{{file_name}}.{{file_type}}
    FROM {{ ref('dept') }}
    OVERWRITE=TRUE
    HEADER=TRUE
    SINGLE=TRUE
    {% endset %}

    {% do run_query(unload_qr) %}
{% endmacro %}
