-- Tìm GIAO DỊCH của bảng 'sports_team_a_ticket_sale' và 'sports_team_b_ticket_sale'

SELECT *
FROM sports_team_a_ticket_sales a
WHERE EXISTS (
  SELECT 1
  FROM sports_team_b_ticket_sales b
  WHERE b.sale_id = a.sale_id
);