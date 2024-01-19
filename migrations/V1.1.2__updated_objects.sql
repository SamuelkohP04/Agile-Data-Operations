-- Log script execution start
--PRINT 'Executing script V1.1.2__updated_objects.sql';

USE SCHEMA PRICESMART;

-- Log before CREATE OR REPLACE TABLE statement
--PRINT 'Creating or replacing table ORDERS';

CREATE OR REPLACE TABLE ORDERS AS
SELECT
  *,
  NULL AS DISCOUNT  -- Add the new column with default value
FROM ORDERS;

-- Log script execution end
--PRINT 'Script execution completed successfully';
