# Задание 1

SELECT c.login,
       COUNT(*) AS "orderDelivery"
FROM "Orders" AS o
JOIN "Couriers" AS c ON o."courierId" = c.id
WHERE o."inDelivery" = true
GROUP BY c.login;

# Задание 2

SELECT track,
       CASE
              WHEN finished = true THEN 2
              WHEN cancelled = true THEN -1
              WHEN "inDelivery" = true THEN 1
              ELSE 0
       END
FROM "Orders";