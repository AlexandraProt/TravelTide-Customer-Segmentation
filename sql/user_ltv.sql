-- Calculates user LTV (Lifetime Value) based on flight and hotel bookings with discounts

WITH session_base AS (
  SELECT  
    s.session_id, s.user_id, s.trip_id, 
    f.base_fare_usd,
    h.hotel_per_room_usd,
    CASE WHEN h.nights < 0 THEN 1 ELSE h.nights END AS nights,
    s.flight_discount_amount,
    s.hotel_discount_amount
  FROM sessions s
  LEFT JOIN flights f ON s.trip_id = f.trip_id
  LEFT JOIN hotels h ON s.trip_id = h.trip_id
  WHERE s.session_start > '2023-01-04'
)

SELECT 
  user_id,
  ROUND(
    SUM(
      COALESCE(base_fare_usd, 0) 
      - COALESCE(flight_discount_amount, 0)
      + COALESCE(hotel_per_room_usd * nights, 0) 
      - COALESCE(hotel_discount_amount, 0)
    ), 2
  ) AS user_ltv
FROM session_base
GROUP BY user_id;
