{{
    config(
        materialized='incremental'
    )
}}

select * from cust

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where MODIFIED_DATE > (select max(MODIFIED_DATE) from {{ this }}) 
{% endif %}