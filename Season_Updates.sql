-- First, update all of the records from spring.
UPDATE bikes_2021
SET season = 'Spring'
WHERE started_at >= '2021-03-20 00:00:00'
	AND started_at <'2021-06-20 00:00:00'
RETURNING *;
-- Next, update all of the records from summer. This time, let's restrict the returned columns to the most relevant ones.
UPDATE bikes_2021
SET season = 'Summer'
WHERE started_at >= '2021-06-20 00:00:00'
	AND started_at < '2021-09-22 00:00:00'
RETURNING started_at, season;
-- Now, update all of the records from autumn.
UPDATE bikes_2021
SET season = 'Autumn'
WHERE started_at >= '2021-09-22 00:00:00'
	AND started_at < '2021-12-21 00:00:00'
RETURNING started_at, season;
/* Finally, update the records from winter. 
This one's a bit different than the others because you're updating
records from the beginning and the end of the year! */
UPDATE bikes_2021
SET season = 'Winter'
WHERE started_at >= '2021-12-21 00:00:00'
	OR started_at < '2021-03-20 00:00:00'
RETURNING started_at, season;
-- Now that all of the seasons have been updated, double-check that nothing was missed.
SELECT season
FROM bikes_2021
WHERE season IS NULL;
