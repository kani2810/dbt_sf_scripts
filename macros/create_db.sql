{% macro create_db(trg_db,trg_sc,src_db,src_sc,table_list) %}
    {% set cr_db %}
    CREATE OR REPLACE DATABASE {{trg_db}};
    {% endset %}
    {% do run_query(cr_db) %}

    {% set cr_sc %}
    CREATE OR REPLACE SCHEMA {{trg_db}}.{{trg_sc}};
    {% endset %}
    {% do run_query(cr_sc) %}

    {% for t1 in table_list %}
        {% set src_tbl=src_db~'.'~src_sc~'.'~t1 %}
        {% set trg_tbl=trg_db~'.'~trg_sc~'.'~t1 %}
    {% set cl_tbl %}
    CREATE OR REPLACE TABLE {{trg_tbl}} CLONE {{src_tbl}}
    {% endset %}
    {% do run_query(cl_tbl) %}
    {% endfor %}

{% endmacro %}