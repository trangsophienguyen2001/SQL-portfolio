SELECT
  date,
  region,
  Total_Bags,
  Small_Bags,
  (Small_Bags / Total_Bags)*100 AS Small_Bags_Percent
FROM
  `trusty-monument-341417.avocado_data.avocado_prices`
WHERE
  total_bags != 0
  
  
  
