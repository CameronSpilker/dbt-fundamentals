with orders as (
    select * from {{ source('jaffle_shop','orders') }}
)


, recast_renamed as ()
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from orders

)

select * from recast_renamed