/* Find the number of trips started during a given hour, 
broken down by rider type and day of the week.. */

SELECT COUNT(ride_id) AS trips, day_of_week, member_casual, EXTRACT(HOUR FROM started_at) AS starthour
FROM bikes_2021
WHERE trip_type <> 'canceled'
GROUP BY starthour, day_of_week, member_casual
ORDER BY trips DESC;
