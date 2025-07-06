-- Create index on users.email for faster lookups and authentication
CREATE INDEX idx_users_email ON users(email);

-- Create index on bookings.user_id for faster joins and aggregation
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on bookings.property_id for JOINs and property analytics
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on properties.location for filtering and search
CREATE INDEX idx_properties_location ON properties(location);

-- Create index on reviews.property_id for LEFT JOINs and aggregations
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
EXPLAIN ANALYZE ...
-- Seq Scan on bookings, higher cost, slower joins
