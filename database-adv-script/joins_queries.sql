-- 1️⃣ INNER JOIN: Get all bookings with user details
SELECT
  bookings.booking_id,
  bookings.property_id,
  bookings.start_date,
  bookings.end_date,
  bookings.total_price,
  users.user_id,
  users.first_name,
  users.last_name,
  users.email
FROM bookings
INNER JOIN users
  ON bookings.user_id = users.user_id;


-- 2️⃣ LEFT JOIN: Get all properties and their reviews (including properties with no reviews), ordered by property name
SELECT
  properties.property_id,
  properties.name AS property_name,
  reviews.review_id,
  reviews.rating,
  reviews.comment
FROM properties
LEFT JOIN reviews
  ON properties.property_id = reviews.property_id
ORDER BY properties.name;



-- 3️⃣ FULL OUTER JOIN: Get all users and bookings (including unmatched ones)
-- ⚠️ Note: PostgreSQL supports FULL OUTER JOIN; MySQL may require UNION workaround
SELECT
  users.user_id,
  users.first_name,
  bookings.booking_id,
  bookings.property_id,
  bookings.start_date
FROM users
FULL OUTER JOIN bookings
  ON users.user_id = bookings.user_id;

