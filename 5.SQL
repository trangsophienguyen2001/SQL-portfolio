SELECT
  EXTRACT (YEAR FROM starttime) AS year,
  COUNT(*) AS Number_of_bikes
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
GROUP BY
  year
ORDER BY
  year DESC
  
  
  
