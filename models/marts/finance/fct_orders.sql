with orders as 
(
    select * from {{ ref('stg_jaffle_shop__orders') }}
),

payments as (
    select * from {{ ref('stg_stripe__payments') }}
    where status = 'success'
),

order_payments as (
    select 
        order_id, 
        sum(amount) as amount
    
    from payments
    
    group by order_id
    
    order by order_id asc
),


final as 
(
    select
        o.order_id,
        o.customer_id,
        coalesce(p.amount, 0) as amount_paid

    from orders o

    left join order_payments p
    on o.order_id = p.order_id
)

select * from final