-- GreenWeez Günlük Ciro Sorgusu
SELECT 
  date_date,
  SUM(turnover) as daily_turnover,
  COUNT(DISTINCT orders_id) as daily_orders,
  SUM(qty) as total_quantity
FROM `data-analytics-469406.course14.gwz_sales`
GROUP BY date_date
ORDER BY date_date DESC;