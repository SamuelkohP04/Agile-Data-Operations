-- Log script execution start
--PRINT 'Executing script V1.1.2__updated_objects.sql';

USE SCHEMA PRICESMART;

-- Log before CREATE OR REPLACE TABLE statement
--PRINT 'Creating or replacing table ORDERS';

ALTER TABLE ORDERS ADD COLUMN DISCOUNT(5,2);
-- Log script execution end
--PRINT 'Script execution completed successfully';
