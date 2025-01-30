-- Data Quality Tests

-- 1. Row count test
SELECT COUNT(*) AS no_of_rows 
FROM vw.uk_youtubers_2024;

-- 2. Column count test
SELECT COUNT(*) AS columns_count 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'uk_youtubers_2024';

-- 3. Data type check
SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'uk_youtubers_2024';

-- 4. Duplicate records check
SELECT channel_name, 
       COUNT(*) AS duplicate_count 
FROM vw.uk_youtubers_2024 
GROUP BY channel_name 
HAVING COUNT(*) > 1;
