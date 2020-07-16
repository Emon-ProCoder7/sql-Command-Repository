WITH months AS (
SELECT '2017-01-01' AS 'First_Day',
       '2017-01-31' AS 'Last_Day'
UNION 
SELECT '2017-02-01' AS 'First_Day',
       '2017-02-31' AS 'Last_Day'
UNION 
SELECT '2017-03-01' AS 'First_Day',
       '2017-03-31' AS 'Last_Day'
 ),
cross_join AS (
SELECT *
FROM subscriptions
CROSS JOIN months
),
status AS(
SELECT id,
First_Day AS month,
CASE
WHEN subscription_start < 'First Day' AND
     segment = 87 THEN 1
ELSE 0
END AS 'is_active_87',
CASE
WHEN subscription_start < 'First Day' AND
     segment = 30 THEN 1
ELSE 0
END AS 'is_active_30',
CASE
WHEN (subscription_end BETWEEN First_Day AND Last_Day) AND
     segment = 87 THEN 1
ELSE 0
END AS 'is_canceled_87',
CASE
WHEN (subscription_end BETWEEN First_Day AND Last_Day) AND
     segment = 30 THEN 1
ELSE 0
END AS 'is_canceled_30'
FROM cross_join
),
status_aggregate AS(
SELECT
month, 
SUM(is_active_87) AS sum_active_87,
SUM(is_active_30) AS sum_active_30,
SUM(is_canceled_87) AS sum_canceled_87,
SUM(is_canceled_30) AS sum_canceled_30
FROM status
GROUP BY month
) 
SELECT
month,
100.00 * sum_canceled_87 / sum_active_87 AS 'Churn Rate 87 Group',
100.00 * sum_canceled_30 / sum_active_30 AS 'Churn Rate 30 Group'
FROM status_aggregate;
