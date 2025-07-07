# ER Diagram – Airbnb Clone

## Entities & Key Attributes
| Entity    | Key attributes (excerpt)              |
|-----------|---------------------------------------|
| **User**      | user_id (PK), first_name, last_name, email (unique), role |
| **Property**  | property_id (PK), host_id (FK → User), name, location, pricepernight |
| **Booking**   | booking_id (PK), user_id (FK), property_id (FK), start_date, status |
| **Payment**   | payment_id (PK), booking_id (FK), amount, payment_method |
| **Review**    | review_id (PK), property_id (FK), user_id (FK), rating |
| **Message**   | message_id (PK), sender_id (FK), recipient_id (FK), message_body |

## Relationships
- A **User** can **own many Properties** (1‑to‑many).
- A **User** can **make many Bookings**; each Booking belongs to one User (1‑to‑many).
- A **Property** can **have many Bookings** (1‑to‑many).
- A **Booking** has **one Payment** (1‑to‑1).
- A **User** can **write many Reviews**; each Review refers to one Property (1‑to‑many).
- Users can **send many Messages** to other Users (self‑referencing 1‑to‑many).

## Diagram
The ER diagram is stored in this folder:

* **airbnb_erd.png** – visual diagram  
* **airbnb.dbml** – source code that can be pasted into <https://dbdiagram.io>

![Airbnb ERD](airbnb_erd.png)
