with amount as (
    select * from {{ ref('stg_payments')}}
)