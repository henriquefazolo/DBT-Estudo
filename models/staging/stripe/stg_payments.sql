with amount as (

  select
    id as order_id,
    amount
  from dbt-estudo.stripe.payment

)

select * from amount
