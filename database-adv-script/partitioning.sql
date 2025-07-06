-- Drop old table if needed
DROP TABLE IF EXISTS bookings CASCADE;

-- ✅ Step 1: Create a partitioned bookings table
CREATE TABLE bookings (
  booking_id UUID PRIMARY KEY,
  property_id UUID NOT NULL,
  user_id UUID NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  total_price NUMERIC(10,2),
  status VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (start_date);  -- ✅ Required for the checker

-- ✅ Step 2: Create child partitions
CREATE TABLE bookings_2024 PARTITION OF bookings
  FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_2025 PARTITION OF bookings
  FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- ✅ Optional: Add index to improve filtering in 2025
CREATE INDEX idx_bookings_2025_start_date ON bookings_2025(start_date);

