SELECT
  station_name,
  ridership_2016,
  ridership_2017,
  ridership_2018,
  (ridership_2016 + ridership_2017 + ridership_2018) / 3 AS average
FROM
  `bigquery-public-data.new_york_subway.subway_ridership_2013_present`
  
  
