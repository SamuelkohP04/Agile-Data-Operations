-- with
-- orders as (
--     select * from raw_orders
-- )

-- select
--     orderid,
--     sum(ordersellingprice) as total_sp
-- from orders
-- group by orderid
-- having total_sp < 0;

-------------------------------------------------------------------
/*Now, using SQL code, we update the negative values from the orders table, by 
converting it to its absolute value.
 alternative is multiplying it by -1 */
-- update Orders
-- set ordersellingprice = abs(ordersellingprice)
-- where orderid in (
--     select orderid
--     from Orders
--     group by orderid
--     having sum(ordersellingprice) < 0
-- );

--------------------------------------------------------------------
/*Lastly, here, we can run dbt tests (not SQL code), to check the quality of 
data, instead of performing data manipulation like updates.
We are checking if order selling price is negative (we hope it should not be.) */
-- select count(*) as num_negative_selling_prices
-- from {{ ref('raw_orders') }}
-- where ordersellingprice < 0

SELECT *
FROM raw_orders
WHERE ordersellingprice < 0