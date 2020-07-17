SELECT 
 COUNT(DISTINCT utm_campaign) AS 'Campaigns',
 COUNT(DISTINCT utm_source) AS 'Sources'
FROM page_visits;


SELECT 
 DISTINCT page_name
FROM page_visits;


WITH first_touch AS (
    SELECT user_id,
        MIN(timestamp) as first_touch_at
    FROM page_visits
    GROUP BY user_id)
SELECT 
		pv.utm_campaign,
    COUNT(*) AS 'Campaign First Touch CTR'
FROM first_touch AS ft
JOIN page_visits AS pv
    ON ft.user_id = pv.user_id
    AND ft.first_touch_at = pv.timestamp
GROUP BY 
    pv.utm_campaign
ORDER BY 
    2 DESC;


WITH last_touch AS (
    SELECT user_id,
        MAX(timestamp) as last_touch_at
    FROM page_visits
    GROUP BY user_id)
SELECT 
		pv.utm_campaign,
    COUNT(*) AS 'Campaign Last Touch CTR'
FROM last_touch AS lt
JOIN page_visits AS pv
    ON lt.user_id = pv.user_id
    AND lt.last_touch_at = pv.timestamp
GROUP BY 
    pv.utm_campaign
ORDER BY 
    2 DESC;


SELECT 
 COUNT(DISTINCT user_id) AS 'Purchaser'
FROM page_visits
WHERE page_name = '4 - purchase';



WITH last_touch AS (
    SELECT user_id,
        MAX(timestamp) as last_touch_at
    FROM page_visits
    GROUP BY user_id)
SELECT 
		pv.utm_campaign,
    COUNT(*) AS 'Campaign Leading purchase CTR'
FROM last_touch AS lt
JOIN page_visits AS pv
    ON lt.user_id = pv.user_id
    AND lt.last_touch_at = pv.timestamp
WHERE 
    page_name = '4 - purchase'
GROUP BY 
    pv.utm_campaign
ORDER BY 
    2 DESC;
