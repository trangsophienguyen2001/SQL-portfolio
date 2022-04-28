SELECT
  warehouse.warehouse_id,
  CONCAT(warehouse.state, ':', warehouse.warehouse_alias) AS warehouse_name,
  COUNT(orders.order_id) AS number_of_orders,
  (
  SELECT
    COUNT(*)
  FROM `trusty-monument-341417.warehouse_orders.orders` as orders) 
  AS total_orders,
  CASE
    WHEN COUNT(orders.order_id)/(SELECT COUNT(*) FROM `trusty-monument-341417.warehouse_orders.orders`) <= 0.20 THEN "fulfilled 0-20% of orders"
    WHEN COUNT(orders.order_id)/(SELECT COUNT(*) FROM `trusty-monument-341417.warehouse_orders.orders`) > 0.20
    AND COUNT(orders.order_id)/(SELECT COUNT(*) FROM `trusty-monument-341417.warehouse_orders.orders`) <= 0.60 
    THEN "Fulfilled 21-60% of orders"
  ELSE "Fulfilled more than 60% of orders"
END
  AS fulfillment_summary
FROM
  `trusty-monument-341417.warehouse_orders.warehouse` AS warehouse
LEFT JOIN
  `trusty-monument-341417.warehouse_orders.orders` AS orders
ON
  orders.warehouse_id = warehouse.warehouse_id
GROUP BY
  warehouse.warehouse_id,
  warehouse_name
