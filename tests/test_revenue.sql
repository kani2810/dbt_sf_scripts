select * from {{ ref('sl_sales') }}
where revenue<0