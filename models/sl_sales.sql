SELECT ID, 
'Rs.'||REVENUE as Revenue_in_rupees, 
TO_CHAR(ORDER_DATE,'yyyy') as order_year, 
TO_CHAR(ORDER_DATE,'MMMM') as order_month,
TO_CHAR(SHIPPED_DATE,'MON dd,yyyy ') as shipped_date, 
TRIM(SHIPPED_STATUS) as shipped_status, 
NVL(MAIL_ID,'NA') as mail_id
FROM {{ source('sl', 'SALES') }}
QUALIFY ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID)=1