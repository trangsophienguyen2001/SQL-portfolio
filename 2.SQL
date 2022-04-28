WITH trips_over_1_hr as
(
    SELECT *
    FROM `bigquery-public-data.new_york_citibike.citibike_trips` 
    WHERE
    tripduration >= 60
)

## Count how many trips are 60+ minutes long

SELECT
    COUNT(*) as cnt 
FROM
trips_over_1_hr 




