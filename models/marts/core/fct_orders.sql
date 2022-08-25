with

amount as (

    select * from {{ ref('stg_payments')}}
),

orders as (

    select * from {{ ref('stg_orders')}}
),

final as (

    select
        amount.order_id,
        orders.customer_id,
        amount.amount,

    from amount
    join orders using (order_id)
)

select * from final