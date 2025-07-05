
# 🧠 SQL Join Queries for Airbnb Clone

This folder contains advanced SQL scripts that demonstrate different types of joins in the Airbnb clone database schema.

---

## ✅ File: `joins_queries.sql`

### 🔹 INNER JOIN
Retrieves all bookings along with the corresponding user details (only matching records).

```sql
SELECT ...
FROM bookings
INNER JOIN users ON bookings.user_id = users.user_id;
