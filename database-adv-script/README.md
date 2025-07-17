# SQL Join Queries

This directory contains advanced SQL queries that demonstrate different types of joins:

1. **INNER JOIN** between `bookings` and `users` to get bookings and the user who made them.
2. **LEFT JOIN** between `properties` and `reviews` to get all properties and any reviews, including properties without reviews.
3. **FULL OUTER JOIN** between `users` and `bookings` to get all users and all bookings, even if there's no link between them.



# Subqueries

This file contains two SQL subqueries:

1. **Non-Correlated Subquery**: Retrieves all properties where the average rating is greater than 4.0.
2. **Correlated Subquery**: Selects all users who have made more than 3 bookings.

Each query follows best practices for performance and clarity.


# Aggregations and Window Functions

This file contains:
- A query using COUNT and GROUP BY to find how many bookings each user has made.
- A query using RANK() as a window function to rank properties based on bookings.

