-- Các dự án nghiên cứu đang diễn ra và nguồn tài trợ của chúng cho các địa điểm khai quật ở Ai Cập là gì?

SELECT
    T1.ProjectName,
    T2.SourceName
FROM ResearchProject AS T1
JOIN FundingSource AS T2 ON T1.ProjectID = T2.ProjectID
JOIN ExcavationSite AS T3 ON T1.SiteID = T3.SiteID
WHERE T3.Country = 'Egypt' AND T1.EndDate > '2025-09-09' OR T1.EndDate IS NULL;