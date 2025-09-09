-- Tổng giá trị giao dịch của mỗi khách hàng trong tuần qua, chia theo loại tiền tệ, đối với khách hàng ở Hoa Kỳ là bao nhiêu?

SELECT
  c.customer_id,
  c.name,
  t.currency,
  SUM(t.amount) AS total_amount
FROM customers c
JOIN transactions t ON c.customer_id = t.customer_id
WHERE c.country = 'USA'
AND t.transaction_date >= current_date - interval '7' DAY
GROUP BY c.customer_id, c.name, t.currency;