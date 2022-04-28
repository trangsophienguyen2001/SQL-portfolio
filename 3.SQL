SELECT
  EXTRACT(YEAR
  FROM
    date) AS year,
  EXTRACT(MONTH
  FROM
    date) AS month,
  ProductId,
  ROUND(MAX(UnitPrice),2) AS UnitPrice,
  SUM(Quantity) AS UnitsSold
FROM
  `trusty-monument-341417.sales.sales_info`
GROUP BY
  year,
  month,
  ProductId
ORDER BY
  Year ASC,
  Month,
  ProductId;



