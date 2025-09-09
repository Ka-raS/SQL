-- Tổng doanh thu từ dịch vụ di động và băng thông rộng của từng khu vực là bao nhiêu?

SELECT
    r.region_name,
    SUM(combined_revenue.total_revenue) AS total_revenue
FROM
    regions AS r
JOIN (
        SELECT region_id, SUM(revenue) AS total_revenue
        FROM mobile_services
        GROUP BY region_id
        UNION ALL
        SELECT region_id, SUM(revenue) AS total_revenue FROM broadband_services
        GROUP BY region_id
) AS combined_revenue
ON r.region_id = combined_revenue.region_id
GROUP BY r.region_name;