{{
    config(
        materialized='ephemeral'
    )
}}
select * from {{ ref('dept') }}