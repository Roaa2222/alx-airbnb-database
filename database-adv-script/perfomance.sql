-- 🔍 EXPLAIN ANALYZE: Analyze query performance
EXPLAIN
SELECT
  b.booking_id,
  b.start_date,
  b.end_date,
  b.total_price,
  u.user_id,
  u.first_name,
  u.last_name,
  p.property_id,
  p.name AS property_name,
  pay.payment_id,
  pay.amount,
  pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.start_date >= CURRENT_DATE
  AND pay.amount IS NOT NULL
ORDER BY b.start_date DESC;
