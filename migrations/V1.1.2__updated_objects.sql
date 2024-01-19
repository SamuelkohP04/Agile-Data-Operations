-- Log script execution start
--PRINT 'Executing script V1.1.2__updated_objects.sql';

USE SCHEMA PRICESMART;

-- Log before CREATE OR REPLACE TABLE statement
--PRINT 'Creating or replacing table ORDERS';

BEGIN
  ALTER TABLE ORDERS
  ADD COLUMN IF NOT EXISTS DISCOUNT DECIMAL(5,2);
EXCEPTION
  WHEN OTHERS THEN
    NULL; -- Do nothing if the column already exists
END;

-- Log script execution end
--PRINT 'Script execution completed successfully';
