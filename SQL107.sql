-- Các khóa học cấp độ 400 (4xx) của CSE đang mở là gì

SELECT dept, number, title
FROM Class c
WHERE dept = "CSE" AND number >= 400;