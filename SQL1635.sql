-- Tên của các tàu đã ghé thăm cả Cảng Long Beach và Cảng Los Angeles là gì?

SELECT T1.vessel_name 
FROM vessel AS T1 
INNER JOIN port AS T2 ON T1.port_id = T2.port_id WHERE T2.port_name IN ('Port of Long Beach', 'Port of Los Angeles')
GROUP BY T1.vessel_name HAVING count(DISTINCT T2.port_name) = 2;