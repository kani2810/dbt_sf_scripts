{{
    config(
        materialized='table',
        transient=false,
        post_hook=["{{grant_access_mco(this.database,this.schema,'dbt_dev',[this.name])}}"]
    )
}}
select id,name from {{ ref('emp') }}