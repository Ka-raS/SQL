-- Tìm lớp học của thầy Levy

SELECT DISTINCT i.username, c.dept, c.number
FROM Instructor i
JOIN Teaches t ON i.username = t.username
JOIN Class c ON t.dept = c.dept AND t.number = c.number
WHERE i.username = "djw" OR i.username = "levy";