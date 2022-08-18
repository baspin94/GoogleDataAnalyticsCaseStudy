/* Create a query to determine the top 10 most popular start stations
for members during 2021. */

SELECT start_station_name, COUNT(ride_id) AS trips
FROM bikes_2021
WHERE trip_type <> 'canceled' AND member_casual = 'member' 
	AND start_station_name IS NOT NULL
GROUP BY start_station_name
ORDER BY trips DESC
LIMIT 10;

/* Create a query to determine the top 10 most popular start stations
for casual riders during 2021. */

SELECT start_station_name, COUNT(ride_id) AS trips
FROM bikes_2021
WHERE trip_type <> 'canceled' AND member_casual = 'casual' 
	AND start_station_name IS NOT NULL
GROUP BY start_station_name
ORDER BY trips DESC
LIMIT 10;

/* Create a query to determine the top 10 most popular end stations
for members during 2021. */

SELECT end_station_name, COUNT(ride_id) AS trips
FROM bikes_2021
WHERE trip_type <> 'canceled' AND member_casual = 'member' 
	AND end_station_name IS NOT NULL
GROUP BY end_station_name
ORDER BY trips DESC
LIMIT 10;

/* Create a query to determine the top 10 most popular end stations
for casual riders during 2021. */

SELECT end_station_name, COUNT(ride_id) AS trips
FROM bikes_2021
WHERE trip_type <> 'canceled' AND member_casual = 'casual' 
	AND end_station_name IS NOT NULL
GROUP BY end_station_name
ORDER BY trips DESC
LIMIT 10;

/* Create a query to pull data on start station trip totals by rider type. */

SELECT start_station_name, member_casual AS rider_type, COUNT(ride_id) AS trips
FROM bikes_2021
WHERE trip_type <> 'canceled'
AND start_station_name IS NOT NULL
GROUP BY start_station_name, rider_type
ORDER BY start_station_name;

/* Create a query to pull data on end station trip totals by rider type. */

SELECT end_station_name, member_casual AS rider_type, COUNT(ride_id) AS trips
FROM bikes_2021
WHERE trip_type <> 'canceled'
AND end_station_name IS NOT NULL
GROUP BY end_station_name, rider_type
ORDER BY end_station_name;

