-- Tổng ngân sách cho các dự án cơ sở hạ tầng nông thôn ở một vị trí cụ thể trong bảng 'rural_infrastructure' là bao nhiêu?

SELECT SUM(budget) AS total_budget
FROM rural_infrastructure
WHERE location = 'Village A'