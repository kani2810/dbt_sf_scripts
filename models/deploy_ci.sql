{{ config(materialized='table') }}

with source as (

    select * from {{ source('test', 'DEPT') }}

),

renamed as (

    select
        dept_id,
        dept_name

    from source

)

select * from renamed
