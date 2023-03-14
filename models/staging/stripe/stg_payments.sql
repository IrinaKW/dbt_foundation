with source as(

    select * from {{ source('stripe','payment')}}
)

select 
    id as payment_id, 
    orderid as order_id, 
    paymentmethod as payment_method,
    status,
    -- convert cents value into dollar value
    {{ cents_to_dollars('amount')}} as amount,
    created as created_at
    
from source
