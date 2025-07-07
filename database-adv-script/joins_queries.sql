-- 1. INNER JOIN: Bookings and the users who made them
SELECT
    bookings.booking_id,
    bookings.start_date,
    bookings.end_date,
    bookings.total_price,
    bookings.status,
    users.user_id,
    users.first_name,
    users.last_name,
    users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.user_id
ORDER BY bookings.booking_id;

-- 2. LEFT JOIN: Properties and their reviews (including properties with no reviews)
SELECT
    properties.property_id,
    properties.name,
    properties.location,
    reviews.review_id,
    reviews.rating,
    reviews.comment,
    reviews.created_at
FROM properties
LEFT JOIN reviews ON properties.property_id = reviews.property_id
ORDER BY properties.property_id;

-- 3. FULL OUTER JOIN (MySQL-compatible version using UNION)
SELECT
    users.user_id,
    users.first_name,
    users.last_name,
    bookings.booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.status
FROM users
LEFT JOIN bookings ON users.user_id = bookings.user_id

UNION

SELECT
    users.user_id,
    users.first_name,
    users.last_name,
    bookings.booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.status
FROM bookings
LEFT JOIN users ON bookings.user_id = users.user_id
ORDER BY user_id;
