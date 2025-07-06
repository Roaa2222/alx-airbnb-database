# 📊 Partitioning Performance Report – Airbnb Clone

## 🎯 Objective
Optimize the performance of queries on a large `bookings` table using **range partitioning** by `start_date`.

---

## 🔧 Implementation

- Converted `bookings` table into a **partitioned table** using:
  ```sql
  PARTITION BY RANGE (start_date)
