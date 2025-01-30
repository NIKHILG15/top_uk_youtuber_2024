-- Data Cleaning Queries
-- 1. Remove unnecessary columns
SELECT NOMBRE, 
       total_subscribers, 
       total_views, 
       total_videos 
FROM youtube_data_from_python;

-- 2. Extract channel name
SELECT CHARINDEX('@', NOMBRE), NOMBRE 
FROM youtube_data_from_python;

-- 3. Extract channel name using SUBSTRING
SELECT SUBSTRING(NOMBRE, 1, CHARINDEX('@', NOMBRE)) 
FROM youtube_data_from_python;

-- 4. Cast and rename for better usability
SELECT CAST(SUBSTRING(NOMBRE, 1, CHARINDEX('@', NOMBRE) - 1) AS varchar(100)) AS channel_name 
FROM youtube_data_from_python;
