-- GreenWeez Günlük Ciro ve Satın Alma Maliyeti Sorgusu
SELECT 
  date_date,
  SUM(turnover) as daily_turnover,
  SUM(purchase_cost) as daily_purchase_cost,
  COUNT(DISTINCT orders_id) as daily_orders,
  SUM(qty) as total_quantity
FROM `data-analytics-469406.course14.gwz_sales`
GROUP BY date_date
ORDER BY date_date DESC;