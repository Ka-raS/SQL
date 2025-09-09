-- Hãy cho biết số tiền lương mà công ty phải trả cho mỗi nhân viên là bao nhiêu

SELECT MaNhanVien, LuongCoBan+PhuCap AS luong
FROM NHANVIEN
ORDER BY MaNhanVien;