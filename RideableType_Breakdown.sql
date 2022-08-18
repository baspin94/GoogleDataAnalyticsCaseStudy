/* Create a query to determine how many trips were completed on each type of bike
in 2021 by members and casual riders. */

WITH s AS (
	SELECT rideable_type, member_casual, COUNT(ride_id) AS trips
	FROM bikes_2021
	WHERE trip_type <> 'canceled' 
	GROUP BY rideable_type, member_casual
	ORDER BY trips DESC
)

/* Add a column on top of this query calculating the percentage of total trips
completed by each bike type. */ 

SELECT *, ROUND((trips/SUM(trips) OVER ()), 2) AS percent_trips
FROM s;