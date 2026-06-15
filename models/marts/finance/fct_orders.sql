with orders as (

    select * from {{ ref('stg_jaffle_shop__orders') }}

),

payments as (

    select * from {{ ref('stg_stripe__payments') }} 
    
),

SuccessPayments as (

    select order_id, sum(case when status = 'success' then amount else 0 end) as amount from payments group by order_id

)

select 
    a.order_id,
    a.customer_id,
    coalesce(b.amount, 0) as amount
from orders a
left join SuccessPayments b on a.order_id = b.order_id

