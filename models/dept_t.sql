{{
    config(
        materialized='table',
        schema='DEV_SC1',
        pre_hook=["{{set_warehouse_mco(var('new_wh'))}}"],
        post_hook=["{{set_warehouse_mco(target.warehouse)}}"]
        )
}}
SELECT * FROM {{ source('new', 'DEPT_T') }}
WHERE DEPT_NAME='{{var('dept_name')}}' OR DEPT_NAME={{ var('dept_name_1') }}