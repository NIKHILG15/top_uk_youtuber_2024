-- View Creation Query
CREATE VIEW vw.uk_youtubers_2024 AS
SELECT 
    CAST(SUBSTRING(NOMBRE, 1, CHARINDEX('@', NOMBRE) - 1) AS varchar(100)) AS channel_name,
    total_subscribers,
    total_views,
    total_videos
FROM 
    youtube_data_from_python;
