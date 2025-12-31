select
    --orderid,
    order_id,
    sum(amount) as total_amount
--from {{source('stripe','payment')}}
from {{ ref('stg_stripe__payment') }}
group by 1
having sum(amount) < 0