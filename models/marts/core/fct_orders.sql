with value as (

    select 
        id as order_id, 
        orderid as customer_id, 
        status,
        amount 
    
    from raw.stripe.payment 

    where status = 'success'
),

final as(
    select 
        customer_id, 
        sum(amount) as lifetime_value from value

    group by 1

)

select * from final
