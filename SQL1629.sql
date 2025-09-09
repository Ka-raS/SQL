-- Có bao nhiêu khách hàng có khả năng tài chính ở miền Bắc và miền Tây cộng lại?

SELECT COUNT(*)
FROM (
  SELECT *
  FROM financially_capable
  WHERE region = 'West' OR region = 'North'
) AS sub;