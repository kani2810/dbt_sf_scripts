{% macro initcap_mco(f,m,l) %}
    INITCAP({{f}}||'.' ||{{m}}|| ' ' ||{{l}})
{% endmacro %}