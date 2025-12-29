select
    orderid,
    sum(amount) as total_amount
from {{source('stripe','payment')}}
group by 1
having sum(amount) < 0