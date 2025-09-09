-- Cho biết tên phòng mà nhân viên trực thuộc

SELECT DISTINCT p.tenphg AS 'Tên phòng'
FROM nhanvien n
JOIN phongban p ON n.phg=p.maphg;