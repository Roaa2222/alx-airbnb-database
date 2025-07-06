# 📈 Database Performance Monitoring Report – Airbnb Clone

---

## 🎯 Objective

Continuously monitor and refine database performance using SQL profiling tools like `EXPLAIN` or `EXPLAIN ANALYZE`.

---

## 🔍 Monitored Queries

### 1️⃣ Query: Total Bookings by User

```sql
EXPLAIN ANALYZE
SELECT
  u.user_id,
  u.first_name,
  COUNT(b.booking_id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name;
