-- Log script execution start
PRINT 'Executing script V1.1.2__updated_objects.sql';

USE SCHEMA PRICESMART;

-- Log before ALTER TABLE statement
PRINT 'Adding column DISCOUNT to table ORDERS';

ALTER TABLE ORDERS ADD COLUMN DISCOUNT DECIMAL;
-- precision of 5, and a scale of 2
-- decimal function allows a specific data type and precision

-- Log script execution end
PRINT 'Script execution completed successfully';
