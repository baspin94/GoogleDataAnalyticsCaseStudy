/* Create a query to count the number of trips completed
each day in 2021 by members. */

SELECT DATE(started_at) AS trip_date, day_of_week, COUNT(ride_id) AS trips
FROM bikes_2021
WHERE member_casual = 'member' AND trip_type <> 'canceled'
GROUP BY trip_date, day_of_week
ORDER BY trip_date;

/* Create a query to count the number of trips completed
each day in 2021 by casual riders. */

SELECT DATE(started_at) AS trip_date, day_of_week, COUNT(ride_id) AS trips
FROM bikes_2021
WHERE member_casual = 'casual' AND trip_type <> 'canceled'
GROUP BY trip_date, day_of_week
ORDER BY trip_date;