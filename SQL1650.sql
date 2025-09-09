-- Kể tên top 3 quốc gia có công suất điện mặt trời lớn nhất (MW)?

SELECT TOP 3 country,sum(capacity) AS total_capacity
FROM solar_farms
GROUP BY country
ORDER BY total_capacity DESC