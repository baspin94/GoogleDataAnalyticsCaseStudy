-- Update all records indicating a canceled trip.
UPDATE bikes_2021
SET trip_type = 'canceled'
WHERE ride_length <= '00:01:00' AND distance_traveled = 0.00
RETURNING *;

-- Update all records with the same station for the start and end.
UPDATE bikes_2021
SET trip_type = 'out-and-back'
WHERE start_station_name = end_station_name AND trip_type IS NULL
RETURNING *;

-- Update all records that didn't have station name data but are out-and-back trips due to distance traveled.
UPDATE bikes_2021
SET trip_type = 'out-and-back'
WHERE ride_length > '00:01:00' AND distance_traveled = 0.00 AND trip_type IS NULL
RETURNING *;

-- Update all remaining records as point-to-point trips.
UPDATE bikes_2021
SET trip_type = 'point-to-point'
WHERE trip_type IS NULL
RETURNING *;
