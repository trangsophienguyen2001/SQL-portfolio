--1.
WITH longest_used_bike AS 
(
    SELECT
        bikeid,
        SUM(duration_minutes) AS trip_duration
    FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` 
    GROUP BY bikeid
    ORDER BY trip_duration DESC
    LIMIT 1
)
## Find the station at which longest bikeshare ride started
SELECT 
    trips.start_station_id,
    COUNT (*) as trips_ct
FROM 
    longest_used_bike AS longest 
INNER JOIN 
    `bigquery-public-data.austin_bikeshare.bikeshare_trips` AS trips
ON longest.bikeid = trips.bikeid
GROUP BY 
    trips.start_station_id
ORDER BY
    trips_ct DESC
LIMIT 1

