with customers as (
    select * from  {{ source('jaffle_shop','customers') }}
)

, recast_renamed as (
    select
        id as customer_id,
        first_name,
        last_name

    from customers

)

select * from recast_renamed