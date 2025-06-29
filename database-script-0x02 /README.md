# 🧪 Sample Data Seed Script

This directory contains the SQL script used to populate the Airbnb clone database with realistic sample data for testing and demonstration.

---

## 📄 File: `seed.sql`

### ✅ Inserts Data Into:

- **Users**: 3 sample users (guests and host)
- **Properties**: 2 listings from a host
- **Bookings**: 2 bookings by different users
- **Payments**: Corresponding payment records
- **Reviews**: Guests reviewing properties
- **Messages**: Communication between guests and hosts

---

## 📦 Usage

To run the script, connect to your database and execute:

```bash
psql -U your_user -d your_database -f seed.sql

