select * from {{ ref('sl_sales') }}
where order_date>shipped_date