{{
    config(
        materialized='view',
        secure=true
    )
}}
select id,salary from {{ ref('emp') }}