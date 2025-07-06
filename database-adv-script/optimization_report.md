# 🚀 Query Optimization Report – Airbnb Clone

## 🎯 Objective
Optimize a multi-join query that retrieves booking details with related user, property, and payment information.

---

## 🔎 Original Query (See: perfomance.sql)

```sql
SELECT ...
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
ORDER BY b.start_date DESC;
