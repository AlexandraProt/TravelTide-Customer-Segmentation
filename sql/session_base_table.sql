-- Creates a session_base_table with sessions, users, flights and hotels

WITH sessions_2023 AS (
  SELECT *
  FROM sessions
  WHERE session_start > '2023-01-04'
),

user_session_counts AS (
  SELECT user_id, COUNT(*) AS total_sessions_2023
  FROM sessions_2023
  GROUP BY user_id
),

filtered_users AS (
  SELECT user_id
  FROM user_session_counts
  WHERE total_sessions_2023 > 7
),

session_base AS (
  SELECT 
    s.session_id, s.user_id, s.trip_id, s.session_start, s.session_end,
    EXTRACT(EPOCH FROM s.session_end - s.session_start) AS session_duration,
    s.page_clicks, s.flight_discount, s.flight_discount_amount,
    s.hotel_discount, s.hotel_discount_amount,
    s.flight_booked, s.hotel_booked, s.cancellation,
    
    u.birthdate, u.gender, u.married, u.has_children,
    u.home_country, u.home_city, u.home_airport,
    u.home_airport_lat, u.home_airport_lon, u.sign_up_date,

    f.origin_airport, f.destination, f.destination_airport,
    f.seats, f.return_flight_booked, f.departure_time, f.return_time,
    f.checked_bags, f.trip_airline,
    f.destination_airport_lat, f.destination_airport_lon,
    f.base_fare_usd,

    h.hotel_name,
    CASE WHEN h.nights < 0 THEN 1 ELSE h.nights END AS nights,
    h.rooms, h.check_in_time, h.check_out_time,
    h.hotel_per_room_usd AS hotel_price_per_room_night_usd,

    CASE 
      WHEN h.check_out_time < h.check_in_time THEN h.check_in_time + INTERVAL '1 day'
      ELSE h.check_out_time
    END AS corrected_check_out_time,

    CASE 
      WHEN h.check_out_time < h.check_in_time THEN TRUE
      ELSE FALSE
    END AS invalid_hotel_dates

  FROM sessions_2023 s
  LEFT JOIN users u ON s.user_id = u.user_id
  LEFT JOIN flights f ON s.trip_id = f.trip_id
  LEFT JOIN hotels h ON s.trip_id = h.trip_id
  WHERE s.user_id IN (SELECT user_id FROM filtered_users)
)

SELECT * FROM session_base;
