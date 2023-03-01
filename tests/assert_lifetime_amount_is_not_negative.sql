select
    customer_id, 
    lifetime_value
from {{ ref('dim_customers') }}

where not(lifetime_value>=0)

