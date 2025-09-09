-- Tên và ngày phóng của vệ tinh được phóng gần đây nhất của mỗi nhà sản xuất là gì?

SELECT M.name, S.name, S.launch_date 
FROM manufacturers M 
JOIN satellites S ON M.id = S.manufacturer_id 
JOIN ( 
    SELECT manufacturer_id, MAX(launch_date) AS last_lunch 
    FROM satellites 
    GROUP BY manufacturer_id 
) 
X ON S.manufacturer_id = X.manufacturer_id 
AND S.launch_date = X.last_lunch;