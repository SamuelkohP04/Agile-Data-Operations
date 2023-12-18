UPDATE raw_orders
SET ordersellingprice = ABS(ordersellingprice)
WHERE orderid IN (
    SELECT orderid
    FROM (
        SELECT orderid, SUM(ordersellingprice) AS total_sp
        FROM raw_orders
        GROUP BY orderid
        HAVING total_sp < 0
    ) AS subquery
);
with
orders as (
    select * from raw_orders
)

select
    orderid,
    sum(ordersellingprice) as total_sp
from orders
group by orderid
having total_sp < 0
