-- Chi phí R&D cho một loại thuốc cụ thể trong một năm nhất định là bao nhiêu so với chi tiêu R&D trung bình cho các loại thuốc khác trong cùng năm đó?

SELECT 
    r.drug_name,
    r.year,
    r.expenditure AS specific_drug_expenditure,
    (SELECT AVG(expenditure) 
     FROM r_and_d_data 
     WHERE year = r.year AND drug_name != r.drug_name) AS avg_expenditure_for_others,
    r.expenditure / 
    (SELECT AVG(expenditure) 
     FROM r_and_d_data 
     WHERE year = r.year AND drug_name != r.drug_name) AS expenditure_ratio
FROM r_and_d_data r
WHERE r.drug_name = 'Tên thuốc cụ thể' AND r.year = 'Năm cụ thể';