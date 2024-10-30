{% macro update_audit_mco(args) %}
    UPDATE DBT_AUDIT SET END_TIME=CURRENT_TIMESTAMP() WHERE MODEL_NAME='{{this.name}}'
{% endmacro %}