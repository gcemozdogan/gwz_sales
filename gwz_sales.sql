-- GreenWeez Günlük Ciro ve Satın Alma Maliyeti Sorgusu
SELECT 
  date_date,
  ROUND(SUM(turnover), 2) as daily_turnover,
  ROUND(SUM(purchase_cost), 2) as daily_purchase_cost,
  COUNT(DISTINCT orders_id) as daily_orders,
  SUM(qty) as total_quantity
FROM `data-analytics-469406.course14.gwz_sales`
GROUP BY date_date
ORDER BY date_date ASC;  -- DESC yerine ASC yap!