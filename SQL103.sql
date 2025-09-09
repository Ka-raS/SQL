-- Liệt kê 2 khóa học theo tên giảng viên (sắp xếp theo tên giảm dần)

SELECT i.username, t.dept, c.number
FROM Instructor i
JOIN Teaches t ON i.username = t.username
JOIN Class c ON t.dept = c.dept AND t.number = c.number
ORDER BY i.username DESC
LIMIT 2;