/* Create a query to determine the total number of trips completed during 2021 by
members and casual riders */

WITH s AS (
	SELECT member_casual, COUNT(ride_id) AS trips
	FROM bikes_2021
	WHERE trip_type <> 'canceled'
	GROUP BY member_casual
	ORDER BY trips DESC
)

/* Add a column on top of this query to calculate
percentages based on the total trips. */

SELECT *, ROUND((trips/SUM(trips) OVER ()), 2) AS percent_trips
FROM s;
