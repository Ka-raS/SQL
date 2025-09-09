-- Họ tên, địa chỉ và năm bắt đầu làm việc của các nhân viên trong cty

SELECT Ho, Ten, DiaChi, year(NgayLamViec) AS 'year(ngaylamviec)'
FROM NHANVIEN;