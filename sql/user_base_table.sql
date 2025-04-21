-- Creates aggregated user base table with behavior, travel metrics, and age

WITH session_base AS (
  SELECT  
    s.session_id, s.user_id, s.trip_id, 
    EXTRACT(EPOCH FROM s.session_end - s.session_start) AS session_duration,
    s.page_clicks, s.flight_booked, s.hotel_booked,
    s.flight_discount_amount, s.hotel_discount_amount,
    f.base_fare_usd,
    h.hotel_per_room_usd,
    CASE WHEN h.nights < 0 THEN 1 ELSE h.nights END AS nights,
    u.birthdate, u.sign_up_date
  FROM sessions s
  LEFT JOIN users u ON s.user_id = u.user_id
  LEFT JOIN flights f ON s.trip_id = f.trip_id
  LEFT JOIN hotels h ON s.trip_id = h.trip_id
  WHERE s.session_start > '2023-01-04'
)

SELECT 
  user_id,
  COUNT(session_id) AS num_sessions,
  SUM(page_clicks) AS total_page_clicks,
  ROUND(AVG(session_duration) / 60.0, 2) AS avg_session_duration_min,
  
  SUM(CASE WHEN flight_booked THEN 1 ELSE 0 END) AS num_flights_booked,
  SUM(CASE WHEN hotel_booked THEN 1 ELSE 0 END) AS num_hotels_booked,
  
  ROUND(AVG(base_fare_usd), 2) AS avg_flight_price,
  ROUND(AVG(hotel_per_room_usd), 2) AS avg_hotel_price_per_night,
  ROUND(AVG(nights), 1) AS avg_trip_nights,

  ROUND(AVG(flight_discount_amount + hotel_discount_amount), 2) AS avg_total_discount,
  DATE_PART('year', AGE(current_date, MIN(birthdate))) AS user_age,
  DATE_PART('month', AGE(current_date, MIN(sign_up_date))) AS customer_age_months

FROM session_base
GROUP BY user_id;
