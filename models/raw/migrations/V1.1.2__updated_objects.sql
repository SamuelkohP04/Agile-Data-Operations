USE SCHEMA PRICESMART;
ALTER TABLE ORDERS ADD COLUMN DISCOUNT DECIMAL(5,2);
-- precision of 5, and a scale of 2
-- decimal function allows a specific data type and precision