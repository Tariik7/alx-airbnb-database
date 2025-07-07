# Database Normalization – Airbnb Clone

## Objective
Ensure the schema design adheres to the **Third Normal Form (3NF)** to reduce redundancy and improve data integrity.

---

## 1NF (First Normal Form)

- ✅ All tables have **atomic columns** (no repeating groups or arrays).
- ✅ Each field contains only one value (e.g., phone_number, email).
- ✅ Each table has a **primary key** to uniquely identify records.

✅ **Passed 1NF**

---

## 2NF (Second Normal Form)

- ✅ All non-key attributes are **fully dependent on the primary key**.
  - Example: In `Booking`, `total_price` depends on the entire primary key `booking_id`.
- ✅ There are no **partial dependencies** in any table.

✅ **Passed 2NF**

---

## 3NF (Third Normal Form)

- ✅ No **transitive dependencies** (non-key columns don’t depend on other non-key columns).
- ✅ Attributes depend **only** on the primary key.
  - Example: In `User`, email, name, and role depend only on `user_id`.
  - In `Property`, `location` and `pricepernight` depend only on `property_id`.

✅ **Passed 3NF**

---

## Conclusion

The current schema satisfies 1NF, 2NF, and 3NF:

- No repeating groups or multivalued columns.
- No partial dependencies.
- No transitive dependencies.

Thus, the database is fully normalized to **Third Normal Form (3NF)**.
