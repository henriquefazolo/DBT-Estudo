with amount as (

  select
    id as customer_id,
    amount
  from dbt-estudo.stripe.payment

)

select * from amount