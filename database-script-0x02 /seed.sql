
-- Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
  ('uuid-user-001', 'Alice', 'Smith', 'alice@example.com', 'hash_pw1', '1234567890', 'guest', NOW()),
  ('uuid-user-002', 'Bob', 'Johnson', 'bob@example.com', 'hash_pw2', '0987654321', 'host', NOW()),
  ('uuid-user-003', 'Carol', 'Williams', 'carol@example.com', 'hash_pw3', NULL, 'guest', NOW());

-- Properties
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
  ('uuid-prop-001', 'uuid-user-002', 'Cozy Studio in Downtown', 'Perfect for short stays', 'Cairo, Egypt', 45.00, NOW(), NOW()),
  ('uuid-prop-002', 'uuid-user-002', 'Sea View Apartment', '2-bedroom with ocean view', 'Alexandria, Egypt', 85.00, NOW(), NOW());

-- Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('uuid-booking-001', 'uuid-prop-001', 'uuid-user-001', '2025-07-01', '2025-07-05', 180.00, 'confirmed', NOW()),
  ('uuid-booking-002', 'uuid-prop-002', 'uuid-user-003', '2025-08-10', '2025-08-12', 170.00, 'pending', NOW());

-- Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('uuid-pay-001', 'uuid-booking-001', 180.00, NOW(), 'credit_card'),
  ('uuid-pay-002', 'uuid-booking-002', 170.00, NOW(), 'paypal');

-- Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  ('uuid-review-001', 'uuid-prop-001', 'uuid-user-001', 5, 'Great stay! Very clean and central.', NOW()),
  ('uuid-review-002', 'uuid-prop-002', 'uuid-user-003', 4, 'Nice view but noisy at night.', NOW());

-- Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('uuid-msg-001', 'uuid-user-001', 'uuid-user-002', 'Hi! Is your studio available for next weekend?', NOW()),
  ('uuid-msg-002', 'uuid-user-002', 'uuid-user-001', 'Yes, it is available. Let me know if you’d like to book!', NOW());
