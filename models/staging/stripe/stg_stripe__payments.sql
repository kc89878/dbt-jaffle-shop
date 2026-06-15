select ID as payment_id
      ,ORDERID as order_id
      ,AMOUNT / 100 as amount
      ,PAYMENTMETHOD as type
      ,status 
      ,created
from raw.stripe.payments