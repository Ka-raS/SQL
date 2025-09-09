-- Hiển thị các món trong thực đơn với giá thấp hơn món chay đắt tiền nhất.

SELECT menu_name, price
FROM (
  SELECT menu_name, price, MAX(price) OVER () AS max_price
  FROM vegetarian_menus
) AS subquery
WHERE price < max_price;