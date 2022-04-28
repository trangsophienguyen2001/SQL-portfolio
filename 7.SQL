SELECT
  Date,
  Region,
  Small_Bags,
  Large_Bags,
  XLarge_Bags,
  Total_Bags,
  Small_Bags + Large_Bags + XLarge_Bags as Total_Bags_Calc
FROM
  `trusty-monument-341417.avocado_data.avocado_prices`
