-- Liệt kê các sự cố an toàn và loại của chúng, cùng với ngày chúng được báo cáo, đối với các nhà máy sản xuất hóa chất ở Hoa Kỳ

SELECT
    Plant,
    Incident_Type,
    Report_Date
FROM
    Safety_Incidents
WHERE
    Plant LIKE '%Chemical%'
    AND Plant = 'USA';