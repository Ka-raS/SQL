-- Cho biết tên của trưởng phòng phòng nghiên cứu

SELECT nv.honv+nv.tenlot+nv.tennv AS 'Trưởng phòng nghiên cứu'
FROM phongban AS pb
INNER JOIN nhanvien AS nv
ON pb.trphg=nv.manv
WHERE tenphg LIKE '%Nghiên%';