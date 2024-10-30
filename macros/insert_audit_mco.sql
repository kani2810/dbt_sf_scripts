{% macro insert_audit_mco(args) %}
    INSERT INTO DBT_AUDIT(MODEL_NAME,START_TIME) VALUES ('{{this.name}}','{{invocationid}}',CURRENT_TIMESTAMP())
{% endmacro %}