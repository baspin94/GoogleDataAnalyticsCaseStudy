/* Create a query to explore various statistics (average, median, max length) 
as well as the total number of hours ridden during trips completed 
in 2021 by members and casual riders. */

WITH s AS (
	SELECT 
		member_casual,
		EXTRACT(HOUR FROM SUM(ride_length)) AS total_time_hrs, 
		DATE_TRUNC('second', AVG(ride_length)) AS avg_length,
		PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY ride_length) AS median_length, 
		MAX(ride_length) AS max_length
	FROM bikes_2021
	WHERE trip_type <> 'canceled'
	GROUP BY member_casual
	ORDER BY total_time_hrs DESC
)

/* Add a column on top of this query calculating the percentages for 
members and casual riders based on the total hours. */ 

SELECT *, ROUND((total_time_hrs/SUM(total_time_hrs) OVER ()), 2) AS percent_hours
FROM s;
