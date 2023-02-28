with source as(

    select * from {{ source('stripe','payment')}}
)

select 
    id as payment_id, 
    orderid as order_id, 
    paymentmethod as payment_method,
    status,
    -- convert cents value into dollar value
    amount/100 as amount,
    created as created_at
    
from source

