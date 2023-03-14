with source as (

    select * from {{ source('jaffle_shop','orders')}}
)

select 
    id as order_id,
    user_id as customer_id,
    order_date,
    status
    
from source

{{limit_data_in_dev('order_date', 1000)}}