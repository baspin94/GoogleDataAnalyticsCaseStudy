WITH s AS (
	SELECT
		ride_id,
		EXTRACT (DAY FROM ended_at) AS end_day, 
		EXTRACT (DAY FROM started_at) AS start_day,
		EXTRACT(DAY FROM ended_at) - EXTRACT(DAY FROM started_at) AS day_diff
	FROM bikes_2021
),

q AS (
	SELECT 
		ride_id,	
		start_day, 
		end_day,
		end_day - start_day AS day_diff
	FROM s
	WHERE end_day > start_day AND day_diff > 1
)

DELETE FROM bikes_2021
USING q
WHERE bikes_2021.ride_id = q.ride_id;