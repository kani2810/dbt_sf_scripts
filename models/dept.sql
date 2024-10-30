{{
    config(
        materialized='table',
        pre_hook=["{{insert_audit_mco()}}"],
        post_hook=["{{update_audit_mco()}}"]
    )
}}
SELECT * FROM {{ source('test', 'DEPT') }}