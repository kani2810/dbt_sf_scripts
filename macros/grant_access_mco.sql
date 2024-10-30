{% macro grant_access_mco(db,sc,role,table_list) %}

    {% set gr_qry %}
    GRANT USAGE ON DATABASE {{db}} TO ROLE {{role}};
    GRANT ALL ON SCHEMA {{db}}.{{sc}} TO ROLE {{role}};
    {% endset %}
    {% do run_query(gr_qry) %}

    {% for tbl in table_list %}
        {% set table_value=db~'.'~sc~'.'~tbl %}
        {% set gr_tbl %}
        GRANT ALL ON TABLE {{table_value}} TO ROLE {{role}}
        {% endset %}
        {% do run_query(gr_tbl) %}
    {% endfor %}
    
{% endmacro %}