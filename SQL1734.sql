-- Có bao nhiêu du khách quay trở lại triển lãm của chúng tôi từ năm trước?

SELECT COUNT(DISTINCT v1.id)
FROM visitors v1
JOIN visitors v2
ON v1.id = v2.id AND v1.visit_year = v2.visit_year + 1;