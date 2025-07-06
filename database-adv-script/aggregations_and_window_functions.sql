-- 1️⃣ Aggregation Query:
-- Find the total number of bookings made by each user

SELECT 
  users.user_id,
  users.first_name,
  users.last_name,
  COUNT(bookings.booking_id) AS total_bookings
FROM users
LEFT JOIN bookings ON users.user_id = bookings.user_id
GROUP BY users.user_id, users.first_name, users.last_name
ORDER BY total_bookings DESC;



-- 2️⃣ Window Function Query:
-- Rank properties based on the total number of bookings (most to least)

SELECT 
  property_id,
  COUNT(booking_id) AS booking_count,
  RANK() OVER (ORDER BY COUNT(booking_id) DESC) AS booking_rank
FROM bookings
GROUP BY property_id;
